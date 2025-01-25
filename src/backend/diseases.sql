-- Drop the diseases table if it already exists
DROP TABLE IF EXISTS diseases;

-- Create the diseases table
CREATE TABLE diseases (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    disease_name TEXT NOT NULL UNIQUE, -- Ensure disease names are unique
    nutrient_food_medicine TEXT NOT NULL -- Detailed description of nutrients, foods, and medications
);

-- Insert diseases with their corresponding nutrients, foods, and medications
-- Use "INSERT OR IGNORE" to avoid duplicate entries
INSERT OR IGNORE INTO diseases (disease_name, nutrient_food_medicine)
VALUES
    ('Hypertension', 'Foods high in potassium, magnesium (bananas, spinach), ACE inhibitors (lisinopril)'),
    ('Diabetes', 'Foods high in fiber (whole grains, vegetables), Insulin'),
    ('Asthma', 'Omega-3 rich foods (salmon, flaxseeds), inhalers (salbutamol)'),
    ('Arthritis', 'Omega-3 fatty acids (salmon, walnuts), anti-inflammatory drugs (ibuprofen)'),
    ('Anemia', 'Iron-rich foods (spinach, red meat), iron supplements'),
    ('Cold', 'Vitamin C rich foods (oranges, bell peppers), Antiviral drugs (oseltamivir)'),
    ('Migraine', 'Magnesium-rich foods (almonds, spinach), pain relievers (acetaminophen, ibuprofen)'),
    ('High Cholesterol', 'Fiber-rich foods (oats, beans), Statins (atorvastatin)'),
    ('Gastroenteritis', 'Hydration (water, electrolyte drinks), anti-nausea medications (ondansetron)'),
    ('Hyperthyroidism', 'Iodine-rich foods (seaweed, fish), Antithyroid medications (methimazole)'),
    ('Hypothyroidism', 'Iodine-rich foods, thyroid hormone replacement (levothyroxine)'),
    ('GERD', 'Foods low in fat, caffeine, and spice (bananas, oatmeal), Proton pump inhibitors (omeprazole)'),
    ('Osteoporosis', 'Calcium-rich foods (dairy products, fortified juices), Vitamin D supplements'),
    ('Influenza', 'Vitamin C-rich foods, antiviral medications (oseltamivir, zanamivir)'),
    ('Tuberculosis', 'High-protein foods, anti-tubercular drugs (isoniazid, rifampicin)'),
    ('Cancer (General)', 'Nutrient-dense foods (fruits, vegetables, whole grains), chemotherapy medications'),
    ('Malaria', 'Antimalarial drugs (chloroquine, artemisinin)'),
    ('Depression', 'Omega-3 rich foods, antidepressants (SSRIs like sertraline)'),
    ('Anxiety', 'Magnesium, omega-3 fatty acids, anti-anxiety medications (diazepam, lorazepam)'),
    ('Parkinson''s Disease', 'Foods high in antioxidants (berries, spinach), dopaminergic medications (levodopa)'),
    ('Alzheimer''s Disease', 'Omega-3 rich foods, antioxidants (vitamin E, curcumin), cholinesterase inhibitors (donepezil)'),
    ('Obesity', 'Low-calorie foods, appetite suppressants (orlistat)'),
    ('Gout', 'Foods low in purines (cherries, coffee), medications (allopurinol, colchicine)'),
    ('Psoriasis', 'Anti-inflammatory foods (fatty fish, olive oil), topical treatments (corticosteroids)'),
    ('Eczema', 'Moisturizing foods (avocado, flaxseeds), topical corticosteroids, antihistamines'),
    ('Insomnia', 'Magnesium-rich foods (pumpkin seeds, almonds), sleep aids (melatonin, zolpidem)'),
    ('Celiac Disease', 'Gluten-free foods, Vitamin D and calcium supplements'),
    ('Hepatitis', 'Antiviral medications (tenofovir, entecavir), nutrient-dense foods (lean proteins, leafy greens)'),
    ('Hepatitis B', 'Antiviral medications (tenofovir, lamivudine), Vitamin D-rich foods'),
    ('Hepatitis C', 'Antiviral medications (sofosbuvir, simeprevir), foods rich in antioxidants (berries)'),
    ('Chronic Fatigue Syndrome', 'High-energy foods (complex carbs, lean proteins), supplements (vitamin B12)'),
    ('Lyme Disease', 'Antibiotics (doxycycline), anti-inflammatory foods (turmeric, ginger)'),
    ('Sickle Cell Anemia', 'Folate-rich foods (leafy greens, beans), pain relievers (hydroxyurea)'),
    ('Epilepsy', 'Foods high in healthy fats (avocados, coconut oil), anticonvulsants (phenytoin)'),
    ('Schizophrenia', 'Omega-3 fatty acids, antipsychotic medications (olanzapine, risperidone)'),
    ('COPD (Chronic Obstructive Pulmonary Disease)', 'Antioxidant-rich foods (berries, nuts), bronchodilators (salbutamol)'),
    ('Bronchitis', 'Hydration (water, herbal teas), bronchodilators (albuterol), expectorants (guaifenesin)'),
    ('Pneumonia', 'Protein-rich foods (eggs, chicken), antibiotics (amoxicillin, azithromycin)'),
    ('Urinary Tract Infection (UTI)', 'Cranberry juice, antibiotics (nitrofurantoin, ciprofloxacin)'),
    ('Kidney Disease', 'Foods low in potassium and phosphorus, dialysis, medications (erythropoietin)'),
    ('Gallstones', 'High-fiber foods (beans, whole grains), lithotripsy or surgery (cholecystectomy)'),
    ('Stroke', 'Foods high in potassium (bananas, sweet potatoes), blood thinners (aspirin, warfarin)'),
    ('Crohn''s Disease', 'Low-residue foods, anti-inflammatory medications (mesalamine, corticosteroids)'),
    ('Ulcerative Colitis', 'Low-residue foods, anti-inflammatory drugs (prednisone, azathioprine)'),
    ('IBS (Irritable Bowel Syndrome)', 'Fiber-rich foods, medications (loperamide, laxatives)'),
    ('Gallbladder Disease', 'Low-fat foods, pain relievers (acetaminophen), surgery if necessary'),
    ('Skin Cancer', 'Antioxidant-rich foods, topical treatments (topical chemotherapy)'),
    ('Rheumatoid Arthritis', 'Omega-3 rich foods (fatty fish, flaxseeds), disease-modifying drugs (methotrexate)'),
    ('Acne', 'Zinc-rich foods (pumpkin seeds, shellfish), topical treatments (benzoyl peroxide)'),
    ('Menopause', 'Foods rich in phytoestrogens (tofu, flaxseeds), Hormone replacement therapy (HRT)'),
    ('Fever', 'Hydration (water, clear broths), fever-reducing medications (acetaminophen, ibuprofen)'),
    ('Headache', 'Hydration (water), pain relievers (aspirin, ibuprofen)');
