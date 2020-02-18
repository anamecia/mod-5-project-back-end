# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username:'Tom', password:'password')

Medicine.create(
    brand_name: 'Ventolin Evohaler',
    drug_name: 'Salbutamol',
    dosage: '100 micrograms',
    group: 'beta-2-andrenoreceptor agonist',
    pharmaceutical_form: 'pressurised metered-dose inhaler',
    number_of_doses: '200',
    leaflet: 'https://www.medicines.org.uk/emc/files/pil.850.pdf'
)

Note.create(user_id:1, content:'first_note')

AsthmaControlTest.create(user_id:1, score:20)

Rx.create(user_id:1, medicine_id:1, remaining_doses:120, rescue:true)