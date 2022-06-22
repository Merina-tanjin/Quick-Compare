<div class="container">
  <h1 class="mt-5 mb-4 fw-bold text-center">Select your preferable websites</h1>
  <?php echo form_open(base_url('Home/showResult')); ?>
  <div class="row">
    <div class="col-md-6">
      <h3 class="centered"><?=$websitesCountry1[0]->country?> (Maximum 5)</h3>
      <ul class="unstyled centered">
        <?php
        foreach ($websitesCountry1 as $website) {
          ?>
          <li>
            <input name="countryweblist1[]" required class="styled-checkbox countryweblist1" id="styled-checkbox-<?=$website->id?>" type="checkbox" value="<?=$website->id?>">
            <label for="styled-checkbox-<?=$website->id?>"><?=$website->website_name?></label>
          </li>
        <?php }?>
      </ul>
    </div>
    <div class="col-md-6">
      <h3 class="centered"><?=$websitesCountry2[0]->country?>  (Maximum 5)</h3>
      <ul class="unstyled centered">
        <?php
        foreach ($websitesCountry2 as $website) {
          ?>
          <li>
            <input name="countryweblist2[]" required class="styled-checkbox countryweblist2" id="styled-checkbox-<?=$website->id?>" type="checkbox" value="<?=$website->id?>">
            <label for="styled-checkbox-<?=$website->id?>"><?=$website->website_name?></label>
          </li>
        <?php }?>
      </ul>
    </div>
  </div>

  <div class="d-grid gap-2 d-sm-flex justify-content-sm-center mb-5">
    <button type="submit" name="button_action" value="securityFactor" class="btn btn-danger btn-lg px-4 me-sm-3 mx-2 calculateBtn">Find security factors</button>
    <button type="submit" name="button_action" value="privacyFactor" class="btn btn-outline-danger btn-lg px-4 mx-2 calculateBtn">Find privacy factors</button>
  </div>
</div>
<?php echo form_close(); ?>
</body>
</html>
