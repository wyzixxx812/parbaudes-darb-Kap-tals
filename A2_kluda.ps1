# ----------------------------------------------------------------------
# A2. PowerShell — procesi ar lielāko CPU patēriņu
# ----------------------------------------------------------------------

# Jāizvada pieci procesi ar VISLIELĀKO procesora patēriņu. Izvadās pieci paši mazākie. Atrodi un salabo kļūdu.
#
# Atrodi un salabo. Tad palaid.
# ----------------------------------------------------------------------                                                                                                Rezultātam pievieno arī kolonnu Id.

Get-Process |
    Where-Object { CPU_Usage -gt 1% } |
    Sort-Object CPU |
    Select-Object -First 5 Name, CPU
