variable loop_subnets {
   type = map
   default = {
      sub-1 = {
	 
         az = "use1-az1"
         cidr = "10.0.0.0/24"
      }
      sub-2 = {
         az = "use1-az1"
         cidr = "10.0.1.0/24"
      }
      sub-3 = {
         az = "use1-az2"
         cidr = "10.0.2.0/24"
      }
   }
}


