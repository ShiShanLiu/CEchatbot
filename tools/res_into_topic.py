import pandas as pd
from collections import defaultdict
import logging
import argparse
import os

LOGGING_FORMAT = '%(levelname)s: %(message)s'
logging.basicConfig(level=logging.INFO, format=LOGGING_FORMAT)


def qrpair_to_lines(QRPair: dict):
    lines = str()
    for keys, value in QRPair.items():
        if keys == "Question" or keys == "Response":
            lines += f"{value}\n"
        else:
            lines += f"{keys}: {value}\n"
    return lines


def write_to_topicres(resPath: str, QRPair: dict):
    # 如果 topic 存在
    if os.path.isfile(f"{resPath}{QRPair['topic']}.res"):
        with open(f"{resPath}{QRPair['topic']}.res", "a") as resFile:
            resFile.write("\n")
            resFile.write(qrpair_to_lines(QRPair))
    # 如果 topic 不存在
    else:
        # 確認是否要加入新 topic
        answer = input(
            f"Confirm add topic \"{QRPair['topic']}\"? (Option: Y/N)\n")
        # 是
        if answer.lower() == "y":
            with open(f"{resPath}{QRPair['topic']}.res", "w") as resFile:
                resFile.write(qrpair_to_lines(QRPair))
            logging.info(f"Topic \"{QRPair['topic']}\" added.")
        # 否
        elif answer.lower() == "n":
            logging.info(f"Topic \"{QRPair['topic']}\" discarded.")
        # 未定義
        else:
            logging.error("Option not recognizable.")


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
                write_to_topicres(args.output, QRPair)

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
