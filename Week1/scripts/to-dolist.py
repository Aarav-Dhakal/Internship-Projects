# To-Do List
tasks = []


def show_tasks():
    if len(tasks) == 0:
        print("No tasks available.")
    else:
        print("\nYour Tasks:")

        for i in range(len(tasks)):
            print(i + 1, ".", tasks[i])


while True:
    print("\n--- TO-DO LIST ---")
    print("1. Add Task")
    print("2. View Tasks")
    print("3. Remove Task")
    print("4. Exit")

    choice = input("Enter your choice: ")

    if choice == "1":
        task = input("Enter task: ")
        tasks.append(task)
        print("Task added.")

    elif choice == "2":
        show_tasks()

    elif choice == "3":
        show_tasks()

        if len(tasks) > 0:
            number = int(input("Enter task number to remove: "))

            if number >= 1 and number <= len(tasks):
                removed = tasks.pop(number - 1)
                print("Removed:", removed)
            else:
                print("Invalid task number.")

    elif choice == "4":
        print("Goodbye!")
        break

    else:
        print("Invalid choice.")