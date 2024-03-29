import sys

def replace_text_in_file(file_path, new_file_path, old_text1, new_text1, old_text2, new_text2):
    with open(file_path, 'r') as file:
        content = file.read()
        modified_content = content.replace(old_text1, new_text1).replace(old_text2, new_text2)

    with open(new_file_path, 'w') as new_file:
        new_file.write(modified_content)

if __name__ == "__main__":
    if len(sys.argv) != 7:
        print("Usage: python script.py <file_path> <new_file_name> <old_text1> <new_text1> <old_text2> <new_text2>")
        sys.exit(1)

    file_path = sys.argv[1]
    new_file_name = sys.argv[2]
    old_text1 = sys.argv[3]
    new_text1 = sys.argv[4]
    old_text2 = sys.argv[5]
    new_text2 = sys.argv[6]

    new_file_path = new_file_name  # You can specify a path if needed

    replace_text_in_file(file_path, new_file_path, old_text1, new_text1, old_text2, new_text2)
    print(f"Text replaced and saved in {new_file_path}.")

