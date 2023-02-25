<?= $this->extend('layout/home') ?>

<?= $this->section('content') ?>

<style>
    .mb-500{
        min-height: 100vh;
    }
</style>

<div class="page-heading">
    <h3>Dashboard</h3>
</div>
<div class="page-content mb-500">
    <section class="row">
        <?php foreach($users as $user) : ?>
            <div class="col-6 col-lg-3 col-md-6">
                <div class="card">
                    <div class="card-body px-3 py-4-5">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="stats-icon purple">
                                    <a href="<?= base_url() ?>/admin/pdf/list/<?= $user['id']; ?>">
                                        <i class="iconly-boldShow"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <h6 class="text-muted font-semibold">
                                    <?= $user['first_name'].' '.$user['last_name']; ?>
                                </h6>
                                <h6 class="font-extrabold mb-0"><?= count($user['pdf_list']); ?></h6>
                                <!-- <a href="" class="float-end fs-6">View Pdf</a> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
    </section>
</div>

<?= $this->endSection() ?>