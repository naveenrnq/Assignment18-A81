module tb;
  
  int task_cnt1,task_cnt2 = 0;
 
  task task1();
    while(1) begin
     #20;
     $display("Task 1 Trigger");
     task_cnt1++;
    end
  endtask
 
  task task2();
    while(1) begin
     #40;
     $display("Task 2 Trigger");
     task_cnt2++;
    end
  endtask
 
  task task3();
   #200;
    $display("task count1: %0d | task count2: %0d",task_cnt1,task_cnt2);
    $finish();
  endtask

  initial begin
    fork
      task1();
      task2();
      task3();
    join
  end
  
 
endmodule
