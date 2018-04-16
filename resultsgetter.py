import csv
import subprocess
import xml.etree.ElementTree
import re

generator_location = "C://Users//Wim//Downloads//groove-5_7_2-bin//groove-5_7_2//bin//generator.jar"
gps_location = "C://Users//Wim//Documents//Universiteit//Year5Module3//SoftwareScience//GraphTransformProject//pentago_wim.gps"
output_file = "C://Users//Wim//Documents//Universiteit//Year5Module3//SoftwareScience//GraphTransformProject//output.txt"
result_file = "C://Users//Wim//Documents//Universiteit//Year5Module3//SoftwareScience//GraphTransformProject//result.csv"

execution_amount = 50
p = True

def write_result(result):
    header = ["States", "Transitions", "Result", "Winner"]
    with open(result_file, 'w', newline='') as csv_file:
        w = csv.DictWriter(csv_file, header)
        w.writeheader()
        for row in result:
            w.writerow(result[row])

def explore():
    result = {}

    for i in range(execution_amount):
        single_result = {}

        cmd_output = subprocess.check_output("java -jar " + generator_location + " " + gps_location + " -f " + output_file,
                                        stdin=None, stderr=None, shell=False)
        splitted_cmd_output = cmd_output.split()
        for index, item in enumerate(splitted_cmd_output):
            if item.decode("utf-8") == 'States:':
                single_result['States'] = splitted_cmd_output[index + 1].decode("utf-8")
        for index, item in enumerate(splitted_cmd_output):
            if item.decode("utf-8") == 'Transitions:':
                single_result['Transitions'] = splitted_cmd_output[index + 1].decode("utf-8")

        root = xml.etree.ElementTree.parse(output_file).getroot()
        game_result = root.findall(".//*[@from='n36'][@to='n45']")[0][0][0].text

        if game_result == 'winner':
            single_result['Result'] = 'Winner'
            winner = root.findall(".//*[@from='n45'][@to='n45']")[1][0][0].text
            name = re.search(r'let:name = string:"(\S+)"', winner).group(1)
            single_result['Winner'] = name
        else:
            single_result['Result'] = 'Draw'

        result[i] = single_result

        if p:
            print("Progress: " + str(i+1) + ' / ' + str(execution_amount))
    return result

write_result(explore())




