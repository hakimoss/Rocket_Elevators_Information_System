# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
employee_list = [
    [ "Genest", "Nicolas", "CEO", "nicolas.genest@codeboxx.biz" ],
    [ "Nadya", "Fortier", "Director", "nadya.fortier@codeboxx.biz" ],
    [ "Chantal", "Martin", "Assistant Director", "martin.chantal@codeboxx.biz" ],
    [ "Mathieu", "Houde", "Captain", "mathieu.houde@codeboxx.biz" ],
    [ "Patrick", "Thibault", "Captain", "patrick.thibault@codeboxx.biz" ],
    [ "David", "Boutin", "Engineer", "david.boutin@codeboxx.biz" ],
    [ "Mathieu", "Lortie", "Engineer", "mathieu.lortie@codeboxx.biz" ],
    [ "Thomas", "Carrier", "Engineer", "thomas.carrier@codeboxx.biz" ],
    [ "Serge", "Savoie", "Engineer", "serge.savoie@codeboxx.biz" ],
    [ "Francis", "Patry-Jessop", "Engineer", "francis.patry-jessop@codeboxx.biz" ],
    [ "Mathieu", "Lefrancois", "Engineer", "mathieu.lefrancois@codeboxx.biz" ],
    [ "David", "Larochelle", "Engineer", "david.larochelle@codeboxx.biz" ],
    [ "Nicolas", "Pineault", "Engineer", "nicolas.pineault@codeboxx.biz" ],
    [ "David", "Amyot", "Engineer", "david.amyot@codeboxx.biz" ],
    [ "Remi", "Gagnon", "Engineer", "remi.gagnon@codeboxx.biz" ],
    [ "Timothy", "Wever", "Developer", "timothy.wever@codeboxx.biz" ],
    [ "Kiril", "Kleinerman", "Developer", "kiril.kleinerman@codeboxx.biz" ],
    [ "Emmanuela", "Derilus", "Developer", "emmanuela.derilus@codeboxx.biz" ],
    [ "Abdul", "Akeeb", "Developer", "abdul.akeeb@codebozz.biz" ],
    [ "Krista", "Sheely", "Developer", "krista.sheely@codeboxx.biz" ],
    [ "Jonathan", "Murray", "Developer", "jonathan.murray@codeboxx.biz" ]
]

employee_list.each do | last_name, first_name, title, email|
    Employee.create(user_id: 3, last_name: last_name, first_name: first_name, title: title, email: email)

end    