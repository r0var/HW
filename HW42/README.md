# HW42

Create NLB and target group. Use NLB to connect via SSH to the instance.  
![1](/HW41/images/01.png)
  
Do the same but with ELB.  
![2](/HW41/images/02.png)
  
1. Attach EIP to this instance.  
2. Attach a secondary private network interface.  
![3](/HW41/images/03.png)
  
3. How many IPs can you associate with your instance type(how many  IPs per ENI)?  
4. Attach another ENI to the instance?  
  
EC2 free tire t2.micro allows two ENI.  
Each ENI can have one public and one private address.  
Summary t2.micro allows four IP addresses.  
  
5. Make a snapshot of your root volume.  
![4](/HW41/images/04.png)
  
6. Resize root volume.  
7. Attach a new EBS to your instance. mount it to /tmp dir  
![5](/HW41/images/05.png)
  
8. Enable deletion protection for EC2. Try to terminate the instance.  
![6](/HW41/images/06.png)
  
  
Create a S3 bucket.  
1. Copy any object to s3. Make it public.  
![7](/HW41/images/07.png)
  
Try to download it using wget  and curl
![8](/HW41/images/08.png)
![9](/HW41/images/09.png)
  
2. Create a folder. Create a lifecycle policy to delete  
everything in the folder older than 1 day. Check this policy works  
![10](/HW41/images/10.png)
