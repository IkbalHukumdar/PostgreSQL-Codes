--case kullanımı
Select dersad,bolumid,
	case 
		when bolumid = 1
	then 'yazılım'
		when bolumid = 2
	then 'mekatronik'
		when bolumid = 3
	then 'elektronik'
		else 'makine'
end yenikolon
from dersler