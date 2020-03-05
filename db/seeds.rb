# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username:'Tom', password:'password', date_of_birth:'1991-03-02')
User.create(username:'John', password:'password', date_of_birth:'1991-03-02')
User.create(username:'Brenda', password:'password', date_of_birth:'1991-03-02')


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
        group: ['corticosteroid','long acting anticholinergics'],
        pharmaceutical_form: 'Turbohaler',
        number_of_doses: [60],
        leaflet: 'https://www.medicines.org.uk/emc/files/pil.6775.pdf' 
    },
    {
        brand_name: 'Spiriva Respimat',
        drug_name: ['tiotropium bromide'],
        dosage: '2.5 microgram',
        group: ['long acting anticholinergic'],
        pharmaceutical_form: 'inhalation solution',
        number_of_doses: [30],
        leaflet: 'https://www.medicines.org.uk/emc/files/pil.407.pdf' 
    },
    {
        brand_name: 'Braltus',
        drug_name: ['tiotropium bromide'],
        dosage: '10 microgram',
        group: ['long acting anticholinergic'],
        pharmaceutical_form: 'Inhalation powder',
        number_of_doses: [30],
        leaflet: 'https://www.medicines.org.uk/emc/files/pil.4446.pdf' 
    },
    {
        brand_name: 'Bricanyl Turbohaler',
        drug_name: ['Terbutaline sulfate'],
        dosage: '0,5 microgram',
        group: ['beta2-agonist'],
        pharmaceutical_form: 'Inhalation powder',
        number_of_doses: [120],
        leaflet: 'https://www.medicines.org.uk/emc/product/869/pil' 
    }
])

Rx.create(user_id: 1, medicine_id:1, rescue: true, remaining_doses: 187)

Rx.create(user_id: 2, medicine_id:1, rescue: true, remaining_doses: 187)

Rx.create(user_id: 3, medicine_id:1, rescue: true, remaining_doses: 187)


TakenDose.create(rx_id: 1, count:2, date: '11th Nov 2020', created_at:"2019-11-18 12:18:27")
TakenDose.create(rx_id: 1, count:2, date: '18th Nov 2020', created_at:"2019-11-18 12:18:27")
TakenDose.create(rx_id: 1, count:3, date: '18th Dec 2020', created_at:"2019-12-18 12:18:27")
TakenDose.create(rx_id: 1, count:4, date: '10th Feb 2020', created_at:"2020-02-10 12:18:27")
TakenDose.create(rx_id: 1, count:3, date: '18th Feb 2020', created_at:"2020-02-18 12:18:27")
TakenDose.create(rx_id: 1, count:2, date: '27th Feb 2020', created_at:"2020-02-27 12:18:27")
TakenDose.create(rx_id: 1, count:2, date: '29th Feb 2020', created_at:"2020-02-29 12:18:27")

TakenDose.create(rx_id: 2, count:2, date: '11th Nov 2020', created_at:"2019-11-18 12:18:27")
TakenDose.create(rx_id: 2, count:2, date: '18th Nov 2020', created_at:"2019-11-18 12:18:27")
TakenDose.create(rx_id: 2, count:3, date: '18th Dec 2020', created_at:"2019-12-18 12:18:27")
TakenDose.create(rx_id: 2, count:4, date: '10th Feb 2020', created_at:"2020-02-10 12:18:27")
TakenDose.create(rx_id: 2, count:3, date: '18th Feb 2020', created_at:"2020-02-18 12:18:27")
TakenDose.create(rx_id: 2, count:2, date: '27th Feb 2020', created_at:"2020-02-27 12:18:27")
TakenDose.create(rx_id: 2, count:2, date: '29th Feb 2020', created_at:"2020-02-29 12:18:27")

TakenDose.create(rx_id: 3, count:2, date: '11th Nov 2020', created_at:"2019-11-18 12:18:27")
TakenDose.create(rx_id: 3, count:2, date: '18th Nov 2020', created_at:"2019-11-18 12:18:27")
TakenDose.create(rx_id: 3, count:3, date: '18th Dec 2020', created_at:"2019-12-18 12:18:27")
TakenDose.create(rx_id: 3, count:4, date: '10th Feb 2020', created_at:"2020-02-10 12:18:27")
TakenDose.create(rx_id: 3, count:3, date: '18th Feb 2020', created_at:"2020-02-18 12:18:27")
TakenDose.create(rx_id: 3, count:2, date: '27th Feb 2020', created_at:"2020-02-27 12:18:27")
TakenDose.create(rx_id: 3, count:2, date: '29th Feb 2020', created_at:"2020-02-29 12:18:27")

AsthmaControlTest.create(user_id:1, score:25, created_at:"2019-11-18 12:18:27")
AsthmaControlTest.create(user_id:1, score:20, created_at:"2019-12-20 12:18:27")
AsthmaControlTest.create(user_id:1, score:4, created_at:"2020-01-28 12:18:27")

AsthmaControlTest.create(user_id:2, score:25, created_at:"2019-11-18 12:18:27")
AsthmaControlTest.create(user_id:2, score:20, created_at:"2019-12-20 12:18:27")
AsthmaControlTest.create(user_id:2, score:4, created_at:"2020-01-28 12:18:27")

AsthmaControlTest.create(user_id:3, score:25, created_at:"2019-11-18 12:18:27")
AsthmaControlTest.create(user_id:3, score:20, created_at:"2019-12-20 12:18:27")
AsthmaControlTest.create(user_id:3, score:4, created_at:"2020-01-28 12:18:27")

Note.create(user_id:1, title:'Asthma attack', content:'Had an asthma attack after spending an afternoon in a house with a dog. Resolved after two puffs of ventolin', created_at: "2019-09-29 12:18:27")
Note.create(user_id:1, title:'A&E', content:"Today I had to go to A&E bacause and asthma attack that didn't resolved after 10 puffs of ventolin", created_at:"2019-10-05 12:18:27")

Note.create(user_id:2, title:'Asthma attack', content:'Had an asthma attack after spending an afternoon in a house with a dog. Resolved after two puffs of ventolin', created_at: "2019-09-29 12:18:27")
Note.create(user_id:2, title:'A&E', content:"Today I had to go to A&E bacause and asthma attack that didn't resolved after 10 puffs of ventolin", created_at:"2019-10-05 12:18:27")

Note.create(user_id:3, title:'Asthma attack', content:'Had an asthma attack after spending an afternoon in a house with a dog. Resolved after two puffs of ventolin', created_at: "2019-09-29 12:18:27")
Note.create(user_id:3, title:'A&E', content:"Today I had to go to A&E bacause and asthma attack that didn't resolved after 10 puffs of ventolin", created_at:"2019-10-05 12:18:27")










