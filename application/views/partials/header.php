<!DOCTYPE html>
<html>
<head>
	<title><?= $pageTitle;?></title>
  <link rel="icon" type="image/x-icon" href="<?= base_url()?>public/assets/images/background.png">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.1.10/sweetalert2.min.css">
  <link rel="stylesheet" href="<?= base_url()?>public/assets/css/custom.css">

  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.6.0/chart.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.1.10/sweetalert2.min.js"></script>
  <script src="<?= base_url()?>public/assets/js/custom.js"></script>
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
      <a class="navbar-brand" href="<?= base_url('Home')?>"><img src="<?= base_url()?>public/assets/images/logo.png" alt="The Quick Compare">
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-md-auto gap-2">
          <li class="nav-item rounded">
            <a class="nav-link <?php echo (($this->uri->segment(1) == "home" && ($this->uri->segment(2) == "" || $this->uri->segment(2) == "index") ) ? "active" : null) ?>" aria-current="page" href="<?= base_url('Home')?>"><i class="bi bi-house-fill me-2"></i>Home</a>
          </li>
          <li class="nav-item rounded">
            <a class="nav-link <?php echo (($this->uri->segment(1) == "Home" && $this->uri->segment(2) == "country") ? "active" : null) ?>" aria-current="page" href="<?= base_url('Home/country')?>"><i class="bi bi-bar-chart-fill me-2"></i>Compare</a>
          </li>
          <li class="nav-item rounded">
            <a class="nav-link <?php echo (($this->uri->segment(1) == "Home" && $this->uri->segment(2) == "about") ? "active" : null) ?>" href="<?= base_url('Home/about')?>"><i class="bi bi-people-fill me-2"></i>About</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

