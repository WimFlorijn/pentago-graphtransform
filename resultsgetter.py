import subprocess
import xml.etree.ElementTree
import os
import re

generator_location = "C://Users//Wim//Downloads//groove-5_7_2-bin//groove-5_7_2//bin//generator.jar"
gps_location = "C://Users//Wim//Documents//Universiteit//Year5Module3//SoftwareScience//GraphTransformProject//pentago_wim.gps"
output_file = "C://Users//Wim//Documents//Universiteit//Year5Module3//SoftwareScience//GraphTransformProject//output.txt"

execution_amount = 25
w,d  = 0, 0
p1, p2 = 0, 0
winners = []
p = True

for i in range(execution_amount):
    subprocess.check_call("java -jar " + generator_location + " " + gps_location + " -f " + output_file, stdin=None, stdout=open(os.devnull, 'w'), stderr=None, shell=False)
    r = xml.etree.ElementTree.parse(output_file).getroot()
    result = r.findall(".//*[@from='n36'][@to='n45']")[0][0][0].text

    if result == 'winner':
        winner = r.findall(".//*[@from='n45'][@to='n45']")[1][0][0].text
        name = re.search(r'let:name = string:"(\S+)"', winner).group(1)
        if name == 'P1':
            p1 += 1
        elif name == 'P2':
            p2 += 1
        else:
            print("ERROR player name mismatch: " + name)
        w += 1
    elif result == 'draw':
        d += 1
    else:
        print("ERROR result mismatch: " + result)
    if p:
        print("Ctr: " + str(i+1) + ' / ' + str(execution_amount))

print("Total number of runs: " + str(execution_amount))
print("Draw amount: " + str(d))
print("Win amount: "+str(w))
print("Player P1 wins: " + str(p1))
print("Player P2 wins: " + str(p2))



