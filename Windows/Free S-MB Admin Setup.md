# Small Business Free Admin Setup
Free IT Admin set up for small businesses who don't actually have an IT budget.  
These are all confirmed as working on Windows 10, and confirmed to work with each other simultaneously.

[title](url)
***
## Endpoint Protection

### [Free Anti Malware Combo](https://github.com/cpardue/infosec/blob/master/Windows/Free%20Anti-malware%20Combo.md)
1a. Enable Windows Defender
1b. Install Malwarebytes Free Anti-Malware
1c. Install Kaspersky Free Anti-Ransomware for Business

### [Free Endpoint Firewall/Network Monitor](https://www.glasswire.com/download/)
To set it up as a network monitor w/remote firewall administration
1. Install Glasswire on mgmt endpoint
2a. Install Glasswire on endpoints
2b. On endpoints Glasswire>Settings>RemoteAccess>RemoteAccess:Unlock(clickme);AllowByPassword(password);AllowAccessOnlyFromIP(mgmtIP)
3. On mgmt endpoint Glasswire>Settings>ServerList>AddNewServer:Name(ComputerName);HostnameOrIP(IP);Password(2bPassword)

### [Free GPO-Like Windows Tweaking Script](https://github.com/cpardue/Win10-Initial-Setup-Script)
This powershell script, when run on an endpoint, will enable or disable features, gui options, and 
security settings via the uncommented options in the default.preset file.  
Download it as a zip, unzip it, edit the default.preset file in notepad++ according to your environment's
needs, and run the default.cmd as administrator on the endpoint.  

***
## Remote Administration
 
### [Free SNMP Network Monitor](https://www.paessler.com/download/prtg-download)
PRTG Network Monitor allows you to set up 100 free SNMP or ping sensors in your network.  
It's a very legitimate solution for monitoring any layer3 stuff in the network, allows 
custom graphs, dashboards, and can be run on a spare machine and accessed through a web 
gui OR run on your mgmt endpoint and accessed at localhost:80.  

### [Free cloud based Active Directory and SSO for 10 users and computers](https://console.jumpcloud.com/signup)
Free Active Directory and very basic policy management dashboard.  Requires internet access for each endpoint.  
What you do is create an account, log into the account from each endpoint, install the software required to enroll that 
system, and create up to 10 user profiles and system profiles.  System profiles are the AD equivilent of Computers, and 
Users are equivilent of Users.  Once the endpoint software is installed, you can configure that system/user local AD 
account.  This creates and assigns a system/user GPO to that local endpoint, creates the user account, and configures it 
just as you would expect from a new AD Domain enrollment.  You can also tether that AD to SSO with whatever cloud apps 
are supported by your environment, such as g suite.  The cool part about jumpcloud is that you can now manage most of 
this stuff through the single jumpcloud admin dashboard, instead of logging into google admin and whatever else separately.  
This can be used to tie together multiple small sites, or to maintain multiple mgmt endpoints at multiple sites. 

### [Free VPN](https://github.com/cpardue/infosec/blob/master/Windows/Servers/OpenVPN%20Server%20Windows%2010)
Setting up a secure VPN is *NOT* that hard.  For a small business with no real budget for CAN or WAN networking.  
Again, the strength is in the ability to tie together multiple remote sites into a larger network.  Each site needs a 
unique subnet, use routing protocols or static routing options that all cheap SOHO routers have within them to route.  

### [Free App Pushing and Forced App Updates on Endpoints](https://github.com/cpardue/infosec/blob/master/Windows/Powershell/Powershell%20Chocolatey)
Chocolatey is an app that can be installed and leveraged with powershell or powershell scripts to push a uniform set 
of packages and apps out to multiple endpoints at once.  It's super easy to use, and can also push Chrome Extension 
installs out to endpoints.  The chocolatey public repo has a ton of open source productivity software available as well.  

### [Free RDP that is not port 3389](https://remotedesktop.google.com/access/)
Chrome Remote Desktop allows you to RDP into a machine through the Chrome Browser.  
You can install a bunch of Remote Access clients on endpoints and access them from the above url, 
or you can install the Remote Support clients, which allows users to request RDP, and give you an 
access code to connect with.  
