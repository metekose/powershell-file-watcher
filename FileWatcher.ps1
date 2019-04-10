$FileSystemWatcher = New-Object System.IO.FileSystemWatcher
$FileSystemWatcher | Get-Member -Type Properties,Event 
$FileSystemWatcher.Path  = "YOURPATH"

  Register-ObjectEvent -InputObject $FileSystemWatcher  -EventName Created  -Action {

  $Object  = "{0} was  {1} at {2}" -f $Event.SourceEventArgs.FullPath,
  
  $Event.SourceEventArgs.ChangeType,

  $Event.TimeGenerated

  #TRIGGER
  #YOUR
  #SCRIPT BLOCK


  
  
Write-Host $Event.SourceEventArgs.FullPath





} 