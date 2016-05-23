# Test-Kitchen / DSC / HyperV quick Demo

## Source
Test-Kitchen is quite new to me, so my source comes from 
[Steven Murawski's blog](http://stevenmurawski.com/powershell/2016/05/getting-started-with-test-kitchen-and-dsc/).
He has installation step and also links to documentation.
My installation step after ChefDK and test-kitchen and modules:
- downloaded an evaluation image from Microsoft downloads
- installed WMF5
- ran windows updates
- sysprep'ed it, and used the resulting vhd image.
- I filled the attached yml configuration.

## Useful commands to get started

The following commands runs an end to end test
```
C:\> kitchen test
```

The command will create the VM if it does not exist already, 
and will converge to your DSC configruation.
If you run it a second time without destroying the VM it will try to converge again.
```
C:\> kitchen converge
```

The following command will destroy your VM. 
```
C:\> kitchen destroy
```

The following parameter will enable debug level to any of the commands above
```
--log-level debug
```
Such as:
```
C:> kitchen test --log-level debug
```

## Pester Test

The test in [TestWinOps](Tests/integration/TestWinOps.ps1) is simply validating
 that the DSC resource did what was expected.
 
## DSC script

This [DSC configuration](examples/dsc_configuration.ps1) based on the Script resource is an illustration to show how
Idempotence is managed across the DSC resources, whether using wmf5 class based resource or not.

 


