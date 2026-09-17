#Calculate average marks
marks = {
    "Python": 80,
    "Database": 75,
    "Math": 70
}

total = 0

for mark in marks.values():
    total = total + mark

average = total / len(marks)

print("Average:", average)