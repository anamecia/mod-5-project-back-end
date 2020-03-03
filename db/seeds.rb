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
        drug_name: ['budesonide', 'formeterol'],
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
        drug_name: ['budesonide', 'formeterol'],
        dosage: '400 micrograms/12 micrograms',
        group: ['corticosteroid','long acting beta-agonist'],
        pharmaceutical_form: 'Turbohaler',
        number_of_doses: [60],
        leaflet: 'https://www.medicines.org.uk/emc/files/pil.6775.pdf' 
    }
])

Rx.create(user_id: 1, medicine_id:1, rescue: true, remaining_doses: 190)

TakenDose.create(rx_id: 1, count:2, date: '20th Feb 2020', created_at:"2019-11-18 12:18:27")
TakenDose.create(rx_id: 1, count:3, date: '22th Feb 2020', created_at:"2019-12-18 12:18:27")
TakenDose.create(rx_id: 1, count:4, date: '25th Feb 2020', created_at:"2020-02-10 12:18:27")
TakenDose.create(rx_id: 1, count:3, date: '26th Feb 2020', created_at:"2020-02-18 12:18:27")
TakenDose.create(rx_id: 1, count:2, date: '29th Feb 2020', created_at:"2020-02-29 12:18:27")

AsthmaControlTest.create(user_id:1, score:25, created_at:"2019-11-18 12:18:27")
AsthmaControlTest.create(user_id:1, score:20, created_at:"2019-12-20 12:18:27")
AsthmaControlTest.create(user_id:1, score:4, created_at:"2020-01-28 12:18:27")
AsthmaControlTest.create(user_id:1, score:8, created_at:"2020-02-29 12:18:27")










