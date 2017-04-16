import hashlib
import os

# def main():

# 	base_dir = os.getcwd()
# 	image_dir = os.path.join(base_dir,'images')

# 	sequencenum = 0
# 	for files in os.listdir(image_dir):
# 		if files.endswith(".jpg" or ".bmp" or ".png" or ".gif" ):
# 			if files.startswith('sports'):
# 				albumid = 1
# 			elif files.startswith('football'):
# 				albumid = 2
# 			elif files.startswith('world'):
# 				albumid = 3
# 			elif files.startswith('space'):
# 				albumid = 4

# 			m = hashlib.md5(str(albumid) + files)
# 			cmd = "INSERT INTO Photo VALUES('{}', '{}', {});" .format(m.hexdigest(),os.path.splitext(files)[1], "now()")
# 			cmd2 = "INSERT INTO Contain VALUES({}, {}, '{}', {});" .format(str(sequencenum), albumid, m.hexdigest(), "''")
# 			print cmd + "\n" + cmd2
# 			sequencenum += 1

# if __name__ == "__main__":
# 	main()

base_dir = os.getcwd()
image_dir = os.path.join(base_dir,'static','images')
for files in os.listdir(image_dir):
	m = hashlib.md5(files)
	print(m.hexdigest() + os.path.splitext(files)[1], files)
