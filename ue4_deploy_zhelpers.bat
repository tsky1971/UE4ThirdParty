echo off

xcopy zhelpers ..\ThirdParty\zhelpers\ /V/S/E/Y

copy zhelpers_Build_cs ..\ThirdParty\zhelpers\zhelpers.Build.cs
copy zhelpers_tps ..\ThirdParty\zhelpers\zhelpers.tps
