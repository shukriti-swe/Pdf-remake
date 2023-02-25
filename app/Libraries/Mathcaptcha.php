<?php

namespace App\Libraries;

/**
 * CodeIgniter MathCaptcha
 *
 *  @category   Libraries
 *  @license    MIT License (http://opensource.org/licenses/MIT)
 *  @author     steven kamanu
 *  @version    1.0
 */
 
  class Mathcaptcha
 {
	private $addNum1;
	private $addNum2;
	private $session;
	private $validation;

	
	 public function __construct($captchaID = 0 ) {

		$this->session=\Config\Services::session();
		$this->validation=\Config\Services::validation(); 

		Config('auth', TRUE);
		helper(['url','date','language']);

        // $this->validation->library('form_validation');

		// $this->ci->lang->load('auth');

		$this->image_garbage_collector();
	 }
	
	/** generate recapta image
	 * 
	 * @access  public
	 * @return  image png or jpg format
	 */
	public function create_captcha()
	{
	    $this->addNum1 = rand(0, 10) * rand(1, 3);
	    $this->addNum2 = rand(0, 10) * rand(1, 3);
		
		// Set the captcha result for current captcha and set it to the session for later check
		// $_SESSION[$this->captchaID] = $this->answer = $this->addNum1 + $this->addNum2;
         
		 $this->session->set([
		            'captcha_word' => ($this->addNum1 + $this->addNum2),
		            'captcha_time' => now()
		            ]);
          
         
	     $word = $this->addNum1 . ' + ' . $this->addNum2 . ' = ';
	     $img_width  = 150;
	     $img_height = 50;
	     $cap = $this->create_image($word ,$img_width,$img_height);
	     
	     return $cap['img'];
	}
	
	
	
	/**  create image with captcha info
	 *
	 * @access public  
	 * @param  string  $word
	 * @param  int     $width
	 * @param  int     $height
	 * @return image
	 */
	public function create_image($word,$width=null,$height=null)
	{  
	    $fontsize = 50;
	    $width    = is_null($width) ? 150 : $width;
	    $height   = is_null($height) ? 30 : $height ;
	    $img      = imagecreatetruecolor($width, $height); 
	    $now = microtime(TRUE);
	    
	    $black = imagecolorallocate($img ,0,0,0);
	    $white = imagecolorallocate($img ,255,255,255);
	    $red   = imagecolorallocate($img ,255,0,0);
	    imagefilledrectangle($img, 0, 0, $width, $height, $white);	
	    imagestring($img,$fontsize,2,2,$word,$red);  
	    imagepng($img, "assets/captcha/".$now.".png"); 
	    imagedestroy($img);   
        
        $img_url = base_url("assets/captcha/".$now.".png");
	    $img = '<img  src="'.$img_url.'" style="width: '.$width.'; height: '.$height .'; border: 0;" alt=" " />';
		
		return [ "img" => $img ];
        }
   
   
	/** check capta exist on session
	 *
	 * @access  public
	 * @return  bool
	 */
	public function _check_captcha($code ,$ans_captcha)
	{
		$time = $this->session->get('captcha_time');
		$word = $ans_captcha;


		list($usec, $sec) = explode(" ", microtime());
		$now = ((float)$usec + (float)$sec);

		// $test = $now.'-'.$time; 
		// echo $test;
		// die();

		if ($now - $time > 60000) {
				// echo 11; 
				// die();
				// echo 'time'; die();
			// $this->validation->getError('_check_captcha', 'Auth Captcha Expired');
			return FALSE;

		} elseif ($code != $word) {
				// echo $code .'!='. $word;
				// echo 22; 
				// die();

			// $this->validation->getError('_check_captcha', 'Auth Incorrect Captcha');
			// return FALSE;		
			return FALSE;
		}
		return TRUE;
	 }
	
	public function image_garbage_collector()
	{
	     $now = microtime(TRUE);
         $img_path = 'assets/captcha/';
         $current_dir = @opendir($img_path);
       
         while ($filename = @readdir($current_dir))
		 {
			 if (in_array(substr($filename, -4), array('.jpg', '.png'))
				&& (str_replace(array('.jpg', '.png'), '', $filename) + 7200) < $now)
			  {
			     @unlink($img_path.$filename);
			  }
		  }
	 }
	
}