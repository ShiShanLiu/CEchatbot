import pandas as pd
from collections import defaultdict
import logging
import argparse
import os

LOGGING_FORMAT = '%(levelname)s: %(message)s'
logging.basicConfig(level=logging.WARNING, format=LOGGING_FORMAT)


def qrpair_to_lines(QRPair: dict()):
    lines = "\n"
    for keys, value in QRPair.items():
        lines += f"{keys}: {value}\n"
    return lines


if __name__ == "__main__":
    # Parsing arguments
    parser = argparse.ArgumentParser()
    parser.add_argument("input",
                        help="specific the response file path",
                        type=str)
    parser.add_argument("output",
                        help="specific the topic based folder path",
                        type=str)
    args = parser.parse_args()
    if args.output == None:
        args.output = ""
    elif args.output[-1] != "/":
        args.output += "/"
    # 讀取response file
    responseFilePath = args.input
    responseFileName = responseFilePath.split('/')[-1].split('.')[-2]

    # Excel format and response file format
    columns = {
        'question': 'Question',
        'response': 'Response',
        'topic': 'Topic（R）',
        'intent label': '#Intent Label (R)',
        'keywords': 'keywords (Q)',
        'required': 'Required (Q)',
        'on repeat': 'On Repeat',
        'previous': 'Previous',
        'require previous': 'Require Previous',
        'next': 'Next',
        'no repeat': 'No repeat',
        'emotions': 'Emotions'
    }

    # 變數初始化
    QRPair = defaultdict(lambda: "")
    lineCnt = 0

    with open(responseFilePath) as responseFile:
        for lineNumber, line in enumerate(responseFile):
            # 輸入 Question & Response Pair 至 [topic].res
            if line == "\n" or line == "\r":
                if os.path.isfile(f"{args.output}{QRPair['topic']}.res"):
                    with open(f"{args.output}{QRPair['topic']}.res",
                              "a") as resFile:
                        resFile.write(qrpair_to_lines(QRPair))
                else:
                    logging.info(f"Topic {QRPair['topic']} doesn't exist.")
                # 變數歸零
                QRPair = defaultdict(lambda: "")
                lineCnt = 0
            else:
                # 讀取 Question
                if lineCnt == 0:
                    QRPair['Question'] = line.strip()
                # 讀取 Response
                elif lineCnt == 1:
                    QRPair['Response'] = line.strip()
                # 讀取 metadata
                else:
                    lineData = line.split(':')
                    lineData[0] = lineData[0].lower()
                    if len(lineData) == 2 and lineData[0] in columns.keys():
                        if lineData[0].lower() == "on repeat":
                            if QRPair[lineData[0]] == "":
                                QRPair[lineData[0]] += lineData[1].strip()
                            else:
                                QRPair[
                                    lineData[0]] += "/" + lineData[1].strip()
                        else:
                            QRPair[lineData[0]] = lineData[1].strip()
                    else:
                        logging.warning(
                            f"\"{line.strip()}\", line {lineNumber}, has been skipped."
                        )
                lineCnt += 1
