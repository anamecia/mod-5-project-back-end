# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username:'Tom', password:'password')

Medicine.create([{
        brand_name: 'Ventolin Evohaler',
        drug_name: ['salbutamol'],
        dosage: '100 micrograms',
        group: ['short acting beta-agonist'],
        pharmaceutical_form: 'pressurised metered-dose inhaler',
        number_of_doses: [200],
        leaflet: 'https://www.medicines.org.uk/emc/files/pil.850.pdf'
    },   
    {
        brand_name: 'Clenil',
        drug_name: ['beclomethasone'],
        dosage: '50 micrograms',
        group: ['corticosteroid'],
        pharmaceutical_form: 'pressurised metered-dose inhaler',
        number_of_doses: [200],
        leaflet: 'https://www.medicines.org.uk/emc/files/pil.6974.pdf' 
    },
    {
        brand_name: 'Clenil',
        drug_name: ['beclomethasone'],
        dosage: '100 micrograms',
        group: ['corticosteroid'],
        pharmaceutical_form: 'pressurised metered-dose inhaler',
        number_of_doses: [200],
        leaflet: 'https://www.medicines.org.uk/emc/files/pil.6974.pdf'
    },
    {
        brand_name: 'Clenil',
        drug_name: ['beclomethasone'],
        dosage: '200 micrograms',
        group: ['corticosteroid'],
        pharmaceutical_form: 'pressurised metered-dose inhaler',
        number_of_doses: [200],
        leaflet: 'https://www.medicines.org.uk/emc/files/pil.6974.pdf' 
    },
    {
        brand_name: 'Clenil',
        drug_name: ['beclomethasone'],
        dosage: '250 micrograms',
        group: ['corticosteroid'],
        pharmaceutical_form: 'pressurised metered-dose inhaler',
        number_of_doses: [200],
        leaflet: 'https://www.medicines.org.uk/emc/files/pil.6974.pdf'
    },
    {
        brand_name: 'Symbicort Turbohaler',
        drug_name: ['budesonide, formeterol'],
        dosage: '100 micrograms/6 micrograms',
        group: ['corticosteroid','long acting beta-agonist'],
        pharmaceutical_form: 'Turbohaler',
        number_of_doses: [60, 120],
        leaflet: 'https://www.medicines.org.uk/emc/files/pil.1326.pdf' 
    },
    {
        brand_name: 'Symbicort Turbohaler',
        drug_name: ['budesonide, formeterol'],
        dosage: '200 micrograms/6 micrograms',
        group: ['corticosteroid','long acting beta-agonist'],
        pharmaceutical_form: 'Turbohaler',
        number_of_doses: [60, 120],
        leaflet: 'https://www.medicines.org.uk/emc/files/pil.1327.pdf' 
    },
    {
        brand_name: 'Symbicort Turbohaler',
        drug_name: ['budesonide, formeterol'],
        dosage: '400 micrograms/12 micrograms',
        group: ['corticosteroid','long acting beta-agonist'],
        pharmaceutical_form: 'Turbohaler',
        number_of_doses: [60],
        leaflet: 'https://www.medicines.org.uk/emc/files/pil.6775.pdf' 
    }
])

Note.create(user_id:1, content:'first_note')

AsthmaControlTest.create(user_id:1, score:20)

Rx.create(user_id:1, medicine_id:1, remaining_doses:120, rescue:true)