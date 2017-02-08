import csv
class Data:

    dataList = []

    #csvFile should point to the data.csv file, but can be changed.
    def __init__(self, csv='../files/data.csv'):
        self.csvFile = csv
        self.getData()

    def getData(self):
        with open(self.csvFile) as f:
            data = [{k: str(v) for k, v in row.items()}
                for row in csv.DictReader(f, skipinitialspace=True)]
        self.dataList = data
