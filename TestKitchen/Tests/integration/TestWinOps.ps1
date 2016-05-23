Describe 'checking File Exists' {
    { Resolve-Path C:\WinOps.txt } | should not Throw
}