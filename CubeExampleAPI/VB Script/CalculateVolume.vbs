Option Explicit


'Declare inputs
Dim height, heightUnits
Dim length, lengthUnits
Dim width, widthUnits

'Initialise inputs
height = CDbl( GetArg( 0, "Enter height" ) )
heightUnits = GetArg( 1, "Enter height units" )
length = CDbl( GetArg( 2, "Enter length" ) )
lengthUnits = GetArg( 3, "Enter length units" )
width =  CDbl( GetArg( 4, "Enter width" ) )
widthUnits = GetArg( 5, "Enter width units" )
    
'Initialise outputs
volumeUnits = GetArg( 6, "Enter volume units" )


'Initialise Tedds
Dim TeddsCalc
Set TeddsCalc = CreateObject( "Tedds.Calculator" )
TeddsCalc.Initialize vbNullString, vbNullString


'Set inputs
TeddsCalc.Functions.SetVar "Height", height, heightUnits
TeddsCalc.Functions.SetVar "Length", length, lengthUnits
TeddsCalc.Functions.SetVar "Width", width, widthUnits

'Declare output
Dim volume, volumeUnits


'Calculate volume
TeddsCalc.Functions.SetVarExpr "Volume", "Height * Length * Width"

'Get volume
volume = TeddsCalc.Functions.GetVar("Volume").ToDouble(volumeUnits)
WScript.Echo "Volume is " & volume & " " & volumeUnits

WScript.Echo "Press any key to exit"
WScript.StdIn.ReadLine()

'Close Tedds
Set TeddsCalc = Nothing

WScript.Quit volume

function GetArg ( index, prompt )
	if WScript.Arguments.Count > index then
		GetArg = WScript.Arguments(index)
	elseif LCase( Right( WScript.FullName, 12 ) ) = "\cscript.exe" then
		WScript.Echo prompt
		WScript.StdIn.Read(0)
		GetArg = WScript.StdIn.ReadLine()
	else
		dim info
		info = "Additional parameters required:" & vbCrLf
		if index < 1 then info = info & "Parameter 1 is height" & vbCrLf
		if index < 2 then info = info & "Parameter 2 is height units" & vbCrLf
		if index < 3 then info = info & "Parameter 3 is length" & vbCrLf
		if index < 4 then info = info & "Parameter 4 is length units" & vbCrLf
		if index < 5 then info = info & "Parameter 5 is width" & vbCrLf
		if index < 6 then info = info & "Parameter 6 is width units" & vbCrLf
		if index < 7 then info = info & "Parameter 7 is volume units" & vbCrLf
		WScript.Echo info
		WScript.Quit
	end if
end function
'' SIG '' Begin signature block
'' SIG '' MIIXxwYJKoZIhvcNAQcCoIIXuDCCF7QCAQExCzAJBgUr
'' SIG '' DgMCGgUAMGcGCisGAQQBgjcCAQSgWTBXMDIGCisGAQQB
'' SIG '' gjcCAR4wJAIBAQQQTvApFpkntU2P5azhDxfrqwIBAAIB
'' SIG '' AAIBAAIBAAIBADAhMAkGBSsOAwIaBQAEFJMqytyGibnJ
'' SIG '' +Y7RZAMcGdAUamjBoIIS9zCCA+4wggNXoAMCAQICEH6T
'' SIG '' 6/t8xk5Z6kuad9QG/DswDQYJKoZIhvcNAQEFBQAwgYsx
'' SIG '' CzAJBgNVBAYTAlpBMRUwEwYDVQQIEwxXZXN0ZXJuIENh
'' SIG '' cGUxFDASBgNVBAcTC0R1cmJhbnZpbGxlMQ8wDQYDVQQK
'' SIG '' EwZUaGF3dGUxHTAbBgNVBAsTFFRoYXd0ZSBDZXJ0aWZp
'' SIG '' Y2F0aW9uMR8wHQYDVQQDExZUaGF3dGUgVGltZXN0YW1w
'' SIG '' aW5nIENBMB4XDTEyMTIyMTAwMDAwMFoXDTIwMTIzMDIz
'' SIG '' NTk1OVowXjELMAkGA1UEBhMCVVMxHTAbBgNVBAoTFFN5
'' SIG '' bWFudGVjIENvcnBvcmF0aW9uMTAwLgYDVQQDEydTeW1h
'' SIG '' bnRlYyBUaW1lIFN0YW1waW5nIFNlcnZpY2VzIENBIC0g
'' SIG '' RzIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
'' SIG '' AQCxrLNJVEuXHBIK2CV5kSJXKm/cuCbEQ3Nrwr8uUFr7
'' SIG '' FMJ2jkMBJUO0oeJF9Oi3e8N0zCLXtJQAAvdN7b+0t0Qk
'' SIG '' a81fRTvRRM5DEnMXgotptCvLmR6schsmTXEfsTHd+1Fh
'' SIG '' AlOmqvVJLAV4RaUvic7nmef+jOJXPz3GktxK+Hsz5HkK
'' SIG '' +/B1iEGc/8UDUZmq12yfk2mHZSmDhcJgFMTIyTsU2sCB
'' SIG '' 8B8NdN6SIqvK9/t0fCfm90obf6fDni2uiuqm5qonFn1h
'' SIG '' 95hxEbziUKFL5V365Q6nLJ+qZSDT2JboyHylTkhE/xni
'' SIG '' RAeSC9dohIBdanhkRc1gRn5UwRN8xXnxycFxAgMBAAGj
'' SIG '' gfowgfcwHQYDVR0OBBYEFF+a9W5czMx0mtTdfe8/2+xM
'' SIG '' gC7dMDIGCCsGAQUFBwEBBCYwJDAiBggrBgEFBQcwAYYW
'' SIG '' aHR0cDovL29jc3AudGhhd3RlLmNvbTASBgNVHRMBAf8E
'' SIG '' CDAGAQH/AgEAMD8GA1UdHwQ4MDYwNKAyoDCGLmh0dHA6
'' SIG '' Ly9jcmwudGhhd3RlLmNvbS9UaGF3dGVUaW1lc3RhbXBp
'' SIG '' bmdDQS5jcmwwEwYDVR0lBAwwCgYIKwYBBQUHAwgwDgYD
'' SIG '' VR0PAQH/BAQDAgEGMCgGA1UdEQQhMB+kHTAbMRkwFwYD
'' SIG '' VQQDExBUaW1lU3RhbXAtMjA0OC0xMA0GCSqGSIb3DQEB
'' SIG '' BQUAA4GBAAMJm495739ZMKrvaLX64wkdu0+CBl03X6ZS
'' SIG '' nxaN6hySCURu9W3rWHww6PlpjSNzCxJvR6muORH4KrGb
'' SIG '' sBrDjutZlgCtzgxNstAxpghcKnr84nodV0yoZRjpeUBi
'' SIG '' JZZux8c3aoMhCI5B6t3ZVz8dd0mHKhYGXqY4aiISo1EZ
'' SIG '' g362MIIEozCCA4ugAwIBAgIQDs/0OMj+vzVuBNhqmBsa
'' SIG '' UDANBgkqhkiG9w0BAQUFADBeMQswCQYDVQQGEwJVUzEd
'' SIG '' MBsGA1UEChMUU3ltYW50ZWMgQ29ycG9yYXRpb24xMDAu
'' SIG '' BgNVBAMTJ1N5bWFudGVjIFRpbWUgU3RhbXBpbmcgU2Vy
'' SIG '' dmljZXMgQ0EgLSBHMjAeFw0xMjEwMTgwMDAwMDBaFw0y
'' SIG '' MDEyMjkyMzU5NTlaMGIxCzAJBgNVBAYTAlVTMR0wGwYD
'' SIG '' VQQKExRTeW1hbnRlYyBDb3Jwb3JhdGlvbjE0MDIGA1UE
'' SIG '' AxMrU3ltYW50ZWMgVGltZSBTdGFtcGluZyBTZXJ2aWNl
'' SIG '' cyBTaWduZXIgLSBHNDCCASIwDQYJKoZIhvcNAQEBBQAD
'' SIG '' ggEPADCCAQoCggEBAKJjCzlEuLsjp0RJuw7/ofBhClOT
'' SIG '' sJjbrSwPSsVu/4Y8U1UPFc4EPyv9qZaW2b5heQtbyUyG
'' SIG '' duXgQ0sile7CK0PBn9hotI5AT+6FOLkRxSPyZFjwFTJv
'' SIG '' TlehroikAtcqHs1L4d1j1ReJMluwXplaqJ0oUA4X7pbb
'' SIG '' YTtFUR3PElYLkkf8q672Zj1HrHBy55LnX80QucSDZJQZ
'' SIG '' vSWA4ejSIqXQugJ6oXeTW2XD7hd0vEGGKtwITIySjJEt
'' SIG '' nndEH2jWqHR32w5bMotWizO92WPISZ06xcXqMwvS8aMb
'' SIG '' 9Iu+2bNXizveBKd6IrIkri7HcMW+ToMmCPsLvalPmQjh
'' SIG '' EChyqs0CAwEAAaOCAVcwggFTMAwGA1UdEwEB/wQCMAAw
'' SIG '' FgYDVR0lAQH/BAwwCgYIKwYBBQUHAwgwDgYDVR0PAQH/
'' SIG '' BAQDAgeAMHMGCCsGAQUFBwEBBGcwZTAqBggrBgEFBQcw
'' SIG '' AYYeaHR0cDovL3RzLW9jc3Aud3Muc3ltYW50ZWMuY29t
'' SIG '' MDcGCCsGAQUFBzAChitodHRwOi8vdHMtYWlhLndzLnN5
'' SIG '' bWFudGVjLmNvbS90c3MtY2EtZzIuY2VyMDwGA1UdHwQ1
'' SIG '' MDMwMaAvoC2GK2h0dHA6Ly90cy1jcmwud3Muc3ltYW50
'' SIG '' ZWMuY29tL3Rzcy1jYS1nMi5jcmwwKAYDVR0RBCEwH6Qd
'' SIG '' MBsxGTAXBgNVBAMTEFRpbWVTdGFtcC0yMDQ4LTIwHQYD
'' SIG '' VR0OBBYEFEbGaaMOShQe1UzaUmMXP142vA3mMB8GA1Ud
'' SIG '' IwQYMBaAFF+a9W5czMx0mtTdfe8/2+xMgC7dMA0GCSqG
'' SIG '' SIb3DQEBBQUAA4IBAQB4O7SRKgBM8I9iMDd4o4QnB28Y
'' SIG '' st4l3KDUlAOqhk4ln5pAAxzdzuN5yyFoBtq2MrRtv/Qs
'' SIG '' JmMz5ElkbQ3mw2cO9wWkNWx8iRbG6bLfsundIMZxD82V
'' SIG '' dNy2XN69Nx9DeOZ4tc0oBCCjqvFLxIgpkQ6A0RH83Vx2
'' SIG '' bk9eDkVGQW4NsOo4mrE62glxEPwcebSAe6xp9P2ctgwW
'' SIG '' K/F/Wwk9m1viFsoTgW0ALjgNqCmPLOGy9FqpAa8VnCwv
'' SIG '' SRvbIrvD/niUUcOGsYKIXfA9tFGheTMrLnu53CAJE3Hr
'' SIG '' ahlbz+ilMFcsiUk/uc9/yb8+ImhjU5q9aXSsxR08f5Lg
'' SIG '' w7wc2AR1MIIE/TCCA+WgAwIBAgIQC6p+z02wWYMCxDqA
'' SIG '' PfkT4zANBgkqhkiG9w0BAQsFADB/MQswCQYDVQQGEwJV
'' SIG '' UzEdMBsGA1UEChMUU3ltYW50ZWMgQ29ycG9yYXRpb24x
'' SIG '' HzAdBgNVBAsTFlN5bWFudGVjIFRydXN0IE5ldHdvcmsx
'' SIG '' MDAuBgNVBAMTJ1N5bWFudGVjIENsYXNzIDMgU0hBMjU2
'' SIG '' IENvZGUgU2lnbmluZyBDQTAeFw0xNTAxMDcwMDAwMDBa
'' SIG '' Fw0xODAzMTAyMzU5NTlaMGUxCzAJBgNVBAYTAkZJMQ4w
'' SIG '' DAYDVQQIEwVFc3BvbzEOMAwGA1UEBxMFRXNwb28xGjAY
'' SIG '' BgNVBAoUEVRla2xhIENvcnBvcmF0aW9uMRowGAYDVQQD
'' SIG '' FBFUZWtsYSBDb3Jwb3JhdGlvbjCCASIwDQYJKoZIhvcN
'' SIG '' AQEBBQADggEPADCCAQoCggEBALbJaylQu7osnPm3bEh2
'' SIG '' kusSqtrHP0erGRi1DvZGHpKCdyaXBZUCqteeBFjK/WFD
'' SIG '' V+MTrPt4O0FwsIVaFq1zSPJg7sZtaR2T3fCKexmMugwd
'' SIG '' K6HWUS+a4modCUH8xbsdrlu2qMDSzxpwa+2Y1QkRYdAK
'' SIG '' G8HYk+0mXcw9TK+mpiGD7z2SJuWDBrMPuLKfSOkrcc7j
'' SIG '' vHHfjydcjJV4QOl5up32zugLqTdRfJ2VBOVG5xjM3Vtc
'' SIG '' AmWrc3pod6vd3yaq6CVXRP8u5X9bHWirSBoyOp/Un6ak
'' SIG '' HyDXlQVW+q6KoUrT7Nz6LdhBe1r9siLG75kaZ+VEjDII
'' SIG '' odiKxHQsR1pCVZkCAwEAAaOCAY0wggGJMAkGA1UdEwQC
'' SIG '' MAAwDgYDVR0PAQH/BAQDAgeAMCsGA1UdHwQkMCIwIKAe
'' SIG '' oByGGmh0dHA6Ly9zdi5zeW1jYi5jb20vc3YuY3JsMGYG
'' SIG '' A1UdIARfMF0wWwYLYIZIAYb4RQEHFwMwTDAjBggrBgEF
'' SIG '' BQcCARYXaHR0cHM6Ly9kLnN5bWNiLmNvbS9jcHMwJQYI
'' SIG '' KwYBBQUHAgIwGQwXaHR0cHM6Ly9kLnN5bWNiLmNvbS9y
'' SIG '' cGEwEwYDVR0lBAwwCgYIKwYBBQUHAwMwVwYIKwYBBQUH
'' SIG '' AQEESzBJMB8GCCsGAQUFBzABhhNodHRwOi8vc3Yuc3lt
'' SIG '' Y2QuY29tMCYGCCsGAQUFBzAChhpodHRwOi8vc3Yuc3lt
'' SIG '' Y2IuY29tL3N2LmNydDAfBgNVHSMEGDAWgBSWO1PweTOX
'' SIG '' r32D7y4rzMq3hh5yZjAdBgNVHQ4EFgQUZAmgj5Ejc/lW
'' SIG '' nltSnjmGVnp7d04wEQYJYIZIAYb4QgEBBAQDAgQQMBYG
'' SIG '' CisGAQQBgjcCARsECDAGAQEAAQH/MA0GCSqGSIb3DQEB
'' SIG '' CwUAA4IBAQAfe+VJqBUkJRPTG5ccxwCJMFG3xr8RHpTw
'' SIG '' iKyyE9boSxNy/fEZnEul6vyX6cEkgHyj20ubg/jjYH3Y
'' SIG '' ifTH34FFU36xENvuGQAv0wU/r5zoaIDKmv3vqelBvXyK
'' SIG '' zFSvMnazM72cMsYCohxGMB7ELZOKixZoz8Ysqy10D0PH
'' SIG '' IZm2yg1/vD5kMamMGaCulIlXb4sWGkzoyIiCUAFpf4PR
'' SIG '' 5kZCsZHmlayYJGn1ovoMftZi3WndSp1K+cRAM3F4qF4s
'' SIG '' 67u5AtWF8YF1emDmDCBc+4ZEd59q8QoUUqiZqO4K63oj
'' SIG '' 1rkufrQaJTxy1ekYUIMvPOSxWxo53bBHmvCt4dKtHcqf
'' SIG '' MIIFWTCCBEGgAwIBAgIQPXjX+XZJYLJhffTwHsqGKjAN
'' SIG '' BgkqhkiG9w0BAQsFADCByjELMAkGA1UEBhMCVVMxFzAV
'' SIG '' BgNVBAoTDlZlcmlTaWduLCBJbmMuMR8wHQYDVQQLExZW
'' SIG '' ZXJpU2lnbiBUcnVzdCBOZXR3b3JrMTowOAYDVQQLEzEo
'' SIG '' YykgMjAwNiBWZXJpU2lnbiwgSW5jLiAtIEZvciBhdXRo
'' SIG '' b3JpemVkIHVzZSBvbmx5MUUwQwYDVQQDEzxWZXJpU2ln
'' SIG '' biBDbGFzcyAzIFB1YmxpYyBQcmltYXJ5IENlcnRpZmlj
'' SIG '' YXRpb24gQXV0aG9yaXR5IC0gRzUwHhcNMTMxMjEwMDAw
'' SIG '' MDAwWhcNMjMxMjA5MjM1OTU5WjB/MQswCQYDVQQGEwJV
'' SIG '' UzEdMBsGA1UEChMUU3ltYW50ZWMgQ29ycG9yYXRpb24x
'' SIG '' HzAdBgNVBAsTFlN5bWFudGVjIFRydXN0IE5ldHdvcmsx
'' SIG '' MDAuBgNVBAMTJ1N5bWFudGVjIENsYXNzIDMgU0hBMjU2
'' SIG '' IENvZGUgU2lnbmluZyBDQTCCASIwDQYJKoZIhvcNAQEB
'' SIG '' BQADggEPADCCAQoCggEBAJeDHgAWryyx0gjE12iTUWAe
'' SIG '' cfbiR7TbWE0jYmq0v1obUfejDRh3aLvYNqsvIVDanvPn
'' SIG '' XydOC8KXyAlwk6naXA1OpA2RoLTsFM6RclQuzqPbROlS
'' SIG '' Gz9BPMpK5KrA6DmrU8wh0MzPf5vmwsxYaoIV7j02zxzF
'' SIG '' lwckjvF7vjEtPW7ctZlCn0thlV8ccO4XfduL5WGJeMdo
'' SIG '' G68ReBqYrsRVR1PZszLWoQ5GQMWXkorRU6eZW4U1V9Pq
'' SIG '' k2JhIArHMHckEU1ig7a6e2iCMe5lyt/51Y2yNdyMK29q
'' SIG '' clxghJzyDJRewFZSAEjM0/ilfd4v1xPkOKiE1Ua4E4bC
'' SIG '' G53qWjjdm9sCAwEAAaOCAYMwggF/MC8GCCsGAQUFBwEB
'' SIG '' BCMwITAfBggrBgEFBQcwAYYTaHR0cDovL3MyLnN5bWNi
'' SIG '' LmNvbTASBgNVHRMBAf8ECDAGAQH/AgEAMGwGA1UdIARl
'' SIG '' MGMwYQYLYIZIAYb4RQEHFwMwUjAmBggrBgEFBQcCARYa
'' SIG '' aHR0cDovL3d3dy5zeW1hdXRoLmNvbS9jcHMwKAYIKwYB
'' SIG '' BQUHAgIwHBoaaHR0cDovL3d3dy5zeW1hdXRoLmNvbS9y
'' SIG '' cGEwMAYDVR0fBCkwJzAloCOgIYYfaHR0cDovL3MxLnN5
'' SIG '' bWNiLmNvbS9wY2EzLWc1LmNybDAdBgNVHSUEFjAUBggr
'' SIG '' BgEFBQcDAgYIKwYBBQUHAwMwDgYDVR0PAQH/BAQDAgEG
'' SIG '' MCkGA1UdEQQiMCCkHjAcMRowGAYDVQQDExFTeW1hbnRl
'' SIG '' Y1BLSS0xLTU2NzAdBgNVHQ4EFgQUljtT8Hkzl699g+8u
'' SIG '' K8zKt4YecmYwHwYDVR0jBBgwFoAUf9Nlp8Ld7LvwMAnz
'' SIG '' Qzn6Aq8zMTMwDQYJKoZIhvcNAQELBQADggEBABOFGh5p
'' SIG '' qTf3oL2kr34dYVP+nYxeDKZ1HngXI9397BoDVTn7cZXH
'' SIG '' ZVqnjjDSRFph23Bv2iEFwi5zuknx0ZP+XcnNXgPgiZ4/
'' SIG '' dB7X9ziLqdbPuzUvM1ioklbRyE07guZ5hBb8KLCxR/Md
'' SIG '' oj7uh9mmf6RWpT+thC4p3ny8qKqjPQQB6rqTog5QIikX
'' SIG '' TIfkOhFf1qQliZsFay+0yQFMJ3sLrBkFIqBgFT/ayftN
'' SIG '' TI/7cmd3/SeUx7o1DohJ/o39KK9KEr0Ns5cF3kQMFfo2
'' SIG '' KwPcwVAB8aERXRTl4r0nS1S+K4ReD6bDdAUK75fDiSKx
'' SIG '' H3fzvc1D1PFMqT+1i4SvZPLQFCExggQ8MIIEOAIBATCB
'' SIG '' kzB/MQswCQYDVQQGEwJVUzEdMBsGA1UEChMUU3ltYW50
'' SIG '' ZWMgQ29ycG9yYXRpb24xHzAdBgNVBAsTFlN5bWFudGVj
'' SIG '' IFRydXN0IE5ldHdvcmsxMDAuBgNVBAMTJ1N5bWFudGVj
'' SIG '' IENsYXNzIDMgU0hBMjU2IENvZGUgU2lnbmluZyBDQQIQ
'' SIG '' C6p+z02wWYMCxDqAPfkT4zAJBgUrDgMCGgUAoHAwEAYK
'' SIG '' KwYBBAGCNwIBDDECMAAwGQYJKoZIhvcNAQkDMQwGCisG
'' SIG '' AQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEOMAwGCisGAQQB
'' SIG '' gjcCARUwIwYJKoZIhvcNAQkEMRYEFB9oR3Xdx1yVJcOk
'' SIG '' j5Og99Xo0AtdMA0GCSqGSIb3DQEBAQUABIIBABQAwytH
'' SIG '' qjRnSw1IsmhF1Mec2mFQFpk+Xnk8J1ngblwZzB7ccIjF
'' SIG '' b6N4t56qDrobOjS1/xjxS+11iWBBiWi+rAJgSg6APhEW
'' SIG '' eixso8Hbjf8vVAORo0sJ99AElD6EPmXLkNL/9Px9f/Tp
'' SIG '' hsCzIun47f7dvZbWi9hmPTPWdvzlvnPuPtdAL8cgN2O/
'' SIG '' QKRmqQECBZv3+luvN/ArOe4eFLQ+Fs2tKE84NbUmwU47
'' SIG '' M3e8uo+Vk8lai3p+aq2qtNmlcxlQTuJb41Aq2dDdM4C2
'' SIG '' RVEcYrfbDXcM5jfiLhPCK3OaXoTNbUsd7a8qzEBxu/1l
'' SIG '' 1Ym9u4+AiwK8zbC9xDLpkjjlAlWhggILMIICBwYJKoZI
'' SIG '' hvcNAQkGMYIB+DCCAfQCAQEwcjBeMQswCQYDVQQGEwJV
'' SIG '' UzEdMBsGA1UEChMUU3ltYW50ZWMgQ29ycG9yYXRpb24x
'' SIG '' MDAuBgNVBAMTJ1N5bWFudGVjIFRpbWUgU3RhbXBpbmcg
'' SIG '' U2VydmljZXMgQ0EgLSBHMgIQDs/0OMj+vzVuBNhqmBsa
'' SIG '' UDAJBgUrDgMCGgUAoF0wGAYJKoZIhvcNAQkDMQsGCSqG
'' SIG '' SIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTUwNTIxMDk1
'' SIG '' MTQwWjAjBgkqhkiG9w0BCQQxFgQULwEilgmBh198x8AB
'' SIG '' jbmbfJrTn5AwDQYJKoZIhvcNAQEBBQAEggEAKXssiqmk
'' SIG '' Rrz+NzsL9oB6DiwFloQMIPGNiXuhlNvtfYFw5BixnPVY
'' SIG '' KbvNMuPx2Jj7orNkQatMOYpuvbR7QpmBpnqf+V/4BY06
'' SIG '' G52qkyutebr4GGxDNrbTlZ9JjmUzyJ0C8NNDA4QYDaeO
'' SIG '' R1P/IfCcAQ8esFUwBPjPaDkoou0ierfTzga4Kf+Ei3vn
'' SIG '' z0Nsp09pE1mI9qiMwkg2AIKldNdqxAePCXOkt//qKU5B
'' SIG '' qNDcJLTgMjTs1UfsvFy1xDP0v+axr58Q02pIQvnUXDmJ
'' SIG '' 39RQ9IE5PHtGialWg2dOEWk2VxppnJGpLmt0OZGQnu0W
'' SIG '' qF4jdPEos8/bian3DmkfdaiGIQ==
'' SIG '' End signature block
