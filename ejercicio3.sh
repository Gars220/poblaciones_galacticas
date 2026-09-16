ADQL="SELECT TOP 20000 s.class, s.z, p.u, p.g FROM SpecObj AS s INNER JOIN PhotoObj AS p ON s.bestObjID=p.objID WHERE s.class IN ('STAR', 'GALAXY') AND p.u BETWEEN 15 AND 18"

URL_ADQL=$(echo $ADQL | sed 's/ /%20/g' | sed "s/'/%27/g")

TAP_URL="http://skyserver.sdss.org/dr18/SkyServerWS/SearchTools/SqlSearch?format=csv&cmd="

wget -O poblado.csv "$TAP_URL$URL_ADQL"


