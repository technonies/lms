<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd ">
            <div class="panel-heading">
                <div class="btn-group"> 
                    <a class="btn btn-success" href="<?php echo base_url("dashboard/language/phrase") ?>"> <i class="fa fa-plus"></i> Add Phrase</a>
                    <a class="btn btn-primary" href="<?php echo base_url("dashboard/language") ?>"> <i class="fa fa-list"></i>  Language List </a> 
                </div> 
            </div>

            <div class="panel-body">
                
                <?php echo  form_open('dashboard/language/addlebel') ?>
                <table class="table table-striped">
                    <thead> 
                        <tr>
                            <td colspan="2"> 
                                <button type="reset" class="btn btn-danger">Reset</button>
                                <button type="submit" class="btn btn-success">Save</button>
                            </td>
                            <td><?php echo $links; ?></td>
                        </tr>
                        <tr>
                            <th><i class="fa fa-th-list"></i></th>
                            <th>Phrase</th>
                            <th>Label</th> 
                        </tr>
                    </thead>

                    <tbody>
                        <?php echo  form_hidden('language', $language) ?>
                            <?php if (!empty($phrases)) {?>
                                <?php $sl = 1 ?>
                                <?php foreach ($phrases as $value) {?>
                                <tr <?php echo  (empty($value->$language)?"":null) ?>>
                                
                                    <td><?php echo  $sl++ ?></td>
                                    <td><input type="text" name="phrase[]" value="<?php echo  $value->phrase ?>" class="form-control" readonly></td>
                                    <td><input type="text" name="lang[]" value="<?php echo  $value->$language ?>" class="form-control"></td> 
                                </tr>
                                <?php } ?>
                            <?php } ?> 
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="2"> 
                                <button type="reset" class="btn btn-danger">Reset</button>
                                <button type="submit" class="btn btn-success">Save</button>
                            </td>
                            <td><?php echo $links; ?></td>
                        </tr>
                    </tfoot>
                    <?php echo  form_close() ?>
                </table>
                <?php echo form_close() ?>
            </div>
        </div>
    </div>
</div>