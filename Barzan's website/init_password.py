import hashlib
import uuid

algorithm = 'sha512'

# password1 = 'paulpass93'

# password2 = 'rebeccapass15'

# password3 = 'bob1pass'
# salt = uuid.uuid4().hex

# m = hashlib.new(algorithm)
# m.update(salt + password1)
# password_hash = m.hexdigest()
# print '$'.join([algorithm, salt, password_hash])

# print '\n'

# salt = uuid.uuid4().hex
# m = hashlib.new(algorithm)
# m.update(salt + password2)
# password_hash = m.hexdigest()
# print '$'.join([algorithm, salt, password_hash])

# print '\n'

password3 = 'Greatbarzan'

m = hashlib.new(algorithm)
salt = uuid.uuid4().hex
m.update(salt + password3)
password_hash = m.hexdigest()
print '$'.join([algorithm, salt, password_hash])