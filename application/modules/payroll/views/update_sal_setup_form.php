       <div class="row">
         <div class="col-sm-12 col-md-12">
           <div class="panel">

             <div class="panel-body">

               <?php echo  form_open('payroll/Payroll/updates_salstup_form/' . $data->employee_id) ?>
               <div class="form-group row">
                 <label for="employee_id" class="col-sm-3 col-form-label"><?php echo display('employee_name') ?> *</label>
                 <div class="col-sm-9">
                   <?php echo form_dropdown('employee_id', $employee, (!empty($data->employee_id) ? $data->employee_id : null), 'class="form-control" id="employee_id"  onchange="employeeSetup(this.value)"') ?>
                 </div>
               </div>

               <div class="form-group row">
                 <label for="payment_period" class="col-sm-3 col-form-label"><?php echo display('salary_type_id') ?> *</label>
                 <div class="col-sm-9">
                   <input type="text" class="form-control" name="sal_type_name" id="sal_type_name" value="<?php if ($EmpRate->rate_type == 1) {
                                                                                                            echo 'Hourly';
                                                                                                          } else {
                                                                                                            echo 'Salary';
                                                                                                          } ?>">
                   <input type="hidden" class="form-control" name="sal_type" id="sal_type" value="<?php echo $EmpRate->rate_type; ?>">
                 </div>
               </div>
               <table border="1" width="100%">
                 <div class="row">

                   <td class="col-sm-6 text-center">
                     <h4 sclass="addition_title">Addition</h4><br>
                     <table id="add"> <?php foreach ($amo as $basic) {
                                      } ?>
                       <tr>
                         <th class="padten">Basic</th>
                         <td><input type="number" id="basic" name="basic" class="form-control" disabled="" value="<?php echo $EmpRate->rate; ?>"></td>
                       </tr>
                       <?php
                        $x = 0;
                        foreach ($amo as $value) { ?>
                         <tr>
                           <th class="padten"><?php echo $value->sal_name; ?> (%)</th>
                           <td>
                             <input type="number" name="amount[<?php echo $value->salary_type_id; ?>]" class="form-control addamount" data-flag = 'add' onkeyup="salarySetupsummary(<?php echo $x ?>,'add')" value="<?php echo $value->amount; ?>" data-id="<?php echo $x; ?>" id="add_<?php echo $x; ?>">
                           </td>
                           <td><input type="text" class="form-control example" name="amountshow[<?php echo $value->salary_type_id; ?>]" id="addshow_<?php echo $x; ?>" value="" readonly=""></td>
                         </tr>
                       <?php $x++;
                        } ?>
                     </table>
                   </td>
                   <td class="col-sm-6 text-center">
                     <h4 class="addition_title">Deduction</h4><br>
                     <table id="dduct">
                       <?php
                        $y = 0;
                        foreach ($samlft as $row) {

                        ?>
                         <tr>
                           <th class="padten"><?php echo $row->sal_name; ?> (%)</th>
                           <td><input type="number" data-flag = 'deduc' name="amount[<?php echo $row->salary_type_id; ?>]" onkeyup="salarySetupsummary(<?php echo $y; ?>)" class="form-control deducamount" value="<?php echo $row->amount ?>" data-id="<?php echo $y; ?>" id="dd_<?php echo $y; ?>"></td>
                           <td><input type="text" class="form-control example" name="amountshow[<?php echo $value->salary_type_id; ?>]" id="deducshow_<?php echo $y; ?>" value="" readonly=""></td>

                        </tr><?php
                              $y++;
                            }
                              ?>
                       <tr>
                         <th class="padten">Tax (%)</th>
                         <td><input type="number" name="amount[]" data-flag = 'deduc' onkeyup="salarySetupsummary(456)" data-id="<?php echo "456"; ?>" id="dd_<?php echo "456"; ?>" class="form-control deducamount" id="taxinput" <?php if ($EmpRate->rate_type == 1) {
                                                                                                                                                  echo 'readonly';
                                                                                                                                                } ?>></td>
                           <td><input type="text" class="form-control example" name="amountshow[<?php echo $value->salary_type_id; ?>]" id="deducshow_<?php echo "456"; ?>" value="" readonly=""></td>

                         <td class="padten"><input type="checkbox" name="tax_manager" id="taxmanager" onchange='handletax(this);' value="1" <?php if ($EmpRate->rate_type == 1) {
                                                                                                                                              echo 'checked' . '  ' . 'disabled';
                                                                                                                                            } ?>>Tax Manager</td>
                       </tr>

                     </table>

                   </td>

                 </div>

               </table>
             </div>
             <div class="form-group row">
               <label for="payable" class="col-sm-3 col-form-label text-center">Net Salary</label>
               <div class="col-sm-9">
                 <input type="text" class="form-control" name="gross_salary" value="<?php echo $basic->gross_salary; ?>" id="grsalary" readonly="">
               </div>
             </div>

             <div class="form-group text-right">
               <button type="reset" class="btn btn-primary w-md m-b-5"><?php echo display('reset') ?></button>
               <button type="submit" class="btn btn-success w-md m-b-5"><?php echo display('update') ?></button>
             </div>
             <?php echo form_close() ?>

           </div>
         </div>
       </div>
       <script src="<?php echo base_url('assets/js/payroll.js') ?>" type="text/javascript"></script>