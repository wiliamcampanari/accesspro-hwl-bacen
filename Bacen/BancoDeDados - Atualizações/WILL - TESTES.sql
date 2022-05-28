use [Hellmann-BacenPro]
SELECT * FROM House

use [Hellmann-BacenPro2]
-- SELECT * FROM [dbo].[Hawb]
SELECT * FROM House

SELECT * FROM [dbo].[Tab_Modalidade]

SELECT * FROM [dbo].[Tab_Origem]

SELECT House.IDHousePrincipal, House.NVoucher, House.ValorInvoice, House.Complemento, House.DataHouse, House.Documento, House.CNHousePrincipal FROM House WHERE (House.Documento=2 Or House.Documento=4) 
AND House.CNHousePrincipal=127167

SELECT * FROM House WHERE not CNHousePrincipal is null -- 82004012
SELECT * FROM House WHERE IDHousePrincipal = 171124 -- 171103
SELECT * FROM House WHERE IDHousePrincipal = 171103
SELECT top 100 * FROM House ORDER BY 1 desc
SELECT * FROM House WHERE NVoucher = '82004012'


127167