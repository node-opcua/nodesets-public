XML2XML=./opcua-modeler.sh

all: lads.yml  RealtimePCR.yml LiHaSystem.yml AbsorbanceReader.yml DynamicMechanicalAnalyzer.yml HPLC.yml Thermostat.yml TLCScanner.yml

lads.yml: ./lads.xml ./Opc.Ua.AMB.NodeSet2.xml
	./opcua-modeler.sh reverse  -s di,machinery -i ./Opc.Ua.AMB.NodeSet2.xml -i lads.xml -o lads.yml 

RealtimePCR.yml: ./RealtimePCR.xml ./Opc.Ua.AMB.NodeSet2.xml ./lads.xml
	./opcua-modeler.sh reverse  -s di,machinery -i ./Opc.Ua.AMB.NodeSet2.xml -i lads.xml -i RealtimePCR.xml -o RealtimePCR.yml 

LiHaSystem.yml: ./LiHaSystem.xml  ./Opc.Ua.AMB.NodeSet2.xml ./lads.xml
	./opcua-modeler.sh reverse  -s di,machinery -i ./Opc.Ua.AMB.NodeSet2.xml -i lads.xml -i LiHaSystem.xml -o LiHaSystem.yml 

AbsorbanceReader.yml: AbsorbanceReader.xml
	./opcua-modeler.sh reverse  -s di,machinery -i ./Opc.Ua.AMB.NodeSet2.xml -i lads.xml -i AbsorbanceReader.xml -o AbsorbanceReader.yml 

DynamicMechanicalAnalyzer.yml: DynamicMechanicalAnalyzer.xml
	./opcua-modeler.sh reverse  -s di,machinery -i ./Opc.Ua.AMB.NodeSet2.xml -i lads.xml -i DynamicMechanicalAnalyzer.xml -o DynamicMechanicalAnalyzer.yml 

HPLC.yml: HPLC.xml
	./opcua-modeler.sh reverse  -s di,machinery -i ./Opc.Ua.AMB.NodeSet2.xml -i lads.xml -i HPLC.xml -o HPLC.yml 

Thermostat.yml: Thermostat.xml
	./opcua-modeler.sh reverse  -s di,machinery -i ./Opc.Ua.AMB.NodeSet2.xml -i lads.xml -i Thermostat.xml -o Thermostat.yml 

TLCScanner.yml: TLCScanner.xml
	./opcua-modeler.sh reverse  -s di,machinery -i ./Opc.Ua.AMB.NodeSet2.xml -i lads.xml -i TLCScanner.xml -o TLCScanner.yml 

clean:
	rm -rf lads.yml
