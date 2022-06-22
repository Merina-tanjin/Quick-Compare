<div class="d-flex justify-content-center align-items-center">
  <?php echo form_open(base_url('Home/websites')); ?>
  <div class="px-4 py-5 my-5 text-center">
    <h1 class="display-5 fw-bold">Select your preferable country</h1>
    <div class="col-lg-6 mx-auto my-4">
      <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
        <div class="select mx-2">
          <select name="country1" id="country1" required oninvalid="this.setCustomValidity('Please Select a Country')" oninput="this.setCustomValidity('')">
            <option value="">Select Country</option>
            <?php
            foreach ($countries as $country) {
              ?>
              <option value="<?=$country->id?>"><?=$country->country?></option>
            <?php }?>
          </select>
        </div>

        <div class="select mx-2">
          <select name="country2" id="country2" required oninvalid="this.setCustomValidity('Please Select a Country')" oninput="this.setCustomValidity('')">
            <option value="">Select Country</option>
            <?php
            foreach ($countries as $country) {
              ?>
              <option value="<?=$country->id?>"><?=$country->country?></option>
            <?php }?>
          </select>
        </div>
      </div>
      <div class="form-check mt-2">
        <label class="form-check-label">
          <input type="radio" class="compareType" name="compareType" value="1" checked="checked" />Compare Govt. Websites
        </label>
      </div>
      <div class="form-check">
        <label class="form-check-label">
          <input type="radio" class="compareType" name="compareType" value="0" />Compare Private Websites
        </label>
      </div>
      
      <button type="submit" name="submit" value="submit" class="btn btn-danger btn-lg my-2 px-5">Compare</button>
    </div>
  </div>
  <?php echo form_close(); ?>
</div>
</body>
</html>