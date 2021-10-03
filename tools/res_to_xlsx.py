import pandas as pd

if __name__ == "__main__":
    # 讀取response file
    responseFilePath = input('請輸入response file檔案路徑：')
    responseFileName = responseFilePath.split('/')[-1].split('.')[-2]

    # Excel format and response file format
    columns = {
        'question': 'Question',
        'response': 'Response',
        'topic': 'Topic（R）',
        'intent label': '#Intent Label (R)',
        'Keywords': 'keywords (Q)',
        'required': 'Required (Q)',
        'on repeat': 'On Repeat',
        'previous': 'Previous',
        'require previous': 'Require Previous',
        'next': 'Next'
    }

    # 創建pandas資料表
    df = pd.DataFrame(columns=columns.values())
    writer = pd.ExcelWriter(f'{responseFileName}.xlsx', engine='openpyxl')

    # 變數初始化
    QRPair = dict()
    lineCnt = 0

    with open(responseFilePath) as responseFile:
        for line in responseFile:
            # 輸入 Question & Response Pair 至pandas資料表
            if line == "\n" or line == "\r":
                df = df.append(QRPair, ignore_index=True)

                # 變數歸零
                QRPair = dict()
                lineCnt = 0
            else:
                # 讀取 Question
                if lineCnt == 0:
                    QRPair['Question'] = line.rstrip()
                # 讀取 Response
                elif lineCnt == 1:
                    QRPair['Response'] = line.rstrip()
                # 讀取 metadata
                else:
                    lineData = line.split(':')
                    if len(lineData) == 2 and lineData[0].lower(
                    ) in columns.keys():
                        QRPair[columns[lineData[0]]] = lineData[1].rstrip()
                lineCnt += 1
        # 輸出至excel檔
        df.to_excel(writer, sheet_name='Output')
        writer.save()
