-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Dec 15, 2025 at 03:18 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `health_advisor`
--

-- --------------------------------------------------------

--
-- Table structure for table `diseases`
--

CREATE TABLE `diseases` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `symptoms` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diseases`
--

INSERT INTO `diseases` (`id`, `name`, `symptoms`, `description`) VALUES
(119, 'Fever related issue', 'Fever', 'What it may mean: Elevated body temperature often from infection. Home care: rest, drink plenty of fluids, cool compress, paracetamol if needed. When to seek urgent help: persistent high fever >48 hours, very high temperature, seizures, or altered consciousness. Recommended specialist: General Physician.'),
(120, 'Cough related issue', 'Cough', 'What it may mean: Reflex to clear airways due to infection, allergy, or irritation. Home care: stay hydrated, humidify air, throat lozenges, avoid smoke. When to seek urgent help: breathlessness, coughing blood, high fever, or cough lasting >2 weeks. Recommended specialist: General Physician / Pulmonologist.'),
(121, 'Headache related issue', 'Headache', 'What it may mean: Pain from tension, migraine, dehydration, or other causes. Home care: rest, hydrate, OTC analgesics, avoid triggers. When to seek urgent help: sudden severe headache, weakness, confusion, vision changes, or vomiting. Recommended specialist: Neurologist.'),
(122, 'Sore throat related issue', 'Sore throat', 'What it may mean: Throat irritation or infection (viral/bacterial). Home care: warm salt-water gargles, fluids, lozenges. When to seek urgent help: severe pain, difficulty breathing or swallowing, high fever. Recommended specialist: ENT Specialist.'),
(123, 'Knee pain related issue', 'Knee pain', 'What it may mean: Strain, sprain, arthritis or injury. Home care: rest, ice, compression, elevation (RICE), avoid weight-bearing. When to seek urgent help: deformity, inability to walk, severe swelling, fever. Recommended specialist: Orthopedic Surgeon.'),
(124, 'Chest pain related issue', 'Chest pain', 'What it may mean: Can indicate cardiac, pulmonary, GI or musculoskeletal cause. Home care: sit upright, rest, avoid exertion. When to seek urgent help: sudden severe pain, sweating, fainting, breathlessness — call emergency immediately. Recommended specialist: Cardiologist.'),
(125, 'Breathing difficulty issue', 'Shortness of breath', 'What it may mean: Respiratory or cardiac issue, asthma, allergy or infection. Home care: sit upright, pursed-lip breathing, use prescribed inhaler. When to seek urgent help: difficulty speaking, falling O2, bluish lips, severe worsening. Recommended specialist: Pulmonologist / Cardiologist.'),
(126, 'Fatigue related issue', 'Fatigue', 'What it may mean: General tiredness from sleep deprivation, infection, anemia, or chronic disease. Home care: rest, balanced diet, good sleep hygiene, hydrate. When to seek urgent help: sudden severe fatigue, fainting, unintentional weight loss. Recommended specialist: General Physician / Endocrinologist.'),
(127, 'Nausea related issue', 'Nausea', 'What it may mean: GI irritation, infection, medication side effect, or metabolic cause. Home care: sip clear fluids, ginger, small bland meals, avoid strong smells. When to seek urgent help: persistent vomiting, blood in vomit, dehydration. Recommended specialist: Gastroenterologist.'),
(128, 'Vomiting related issue', 'Vomiting', 'What it may mean: Infection, food poisoning, obstruction or other GI issues. Home care: rehydrate with ORS, rest, avoid solids until settled. When to seek urgent help: persistent vomiting, signs of dehydration, blood in vomit. Recommended specialist: Gastroenterologist.'),
(129, 'Diarrhea related issue', 'Diarrhea', 'What it may mean: Infection, food poisoning, parasite or medication effect. Home care: ORS, diet (BRAT), avoid sugary drinks, rest. When to seek urgent help: severe dehydration, blood in stool, high fever, prolonged >48 hours. Recommended specialist: Gastroenterologist.'),
(130, 'Constipation related issue', 'Constipation', 'What it may mean: Low fiber, dehydration, medications or GI motility issues. Home care: increase fiber and fluids, exercise, occasional laxative. When to seek urgent help: severe pain, vomiting, blood in stool, sudden change. Recommended specialist: Gastroenterologist.'),
(131, 'Abdominal pain issue', 'Abdominal pain', 'What it may mean: Many causes — indigestion, infection, stones, appendicitis. Home care: rest, avoid heavy meals, bland diet. When to seek urgent help: severe localised pain, fever, vomiting, bleeding, or inability to pass stool. Recommended specialist: Gastroenterologist / General Surgeon.'),
(132, 'Back pain issue', 'Back pain', 'What it may mean: Muscle strain, disc problems, or nerve impingement. Home care: rest, heat/ice, gentle stretching, avoid heavy lifting. When to seek urgent help: loss of bladder/bowel control, weakness in legs, severe progressive pain. Recommended specialist: Orthopedic Surgeon / Physiotherapist.'),
(133, 'Neck pain issue', 'Neck pain', 'What it may mean: Poor posture, strain or cervical issues. Home care: ergonomic fixes, gentle stretches, heat therapy. When to seek urgent help: numbness/weakness in arms, severe trauma, high fever. Recommended specialist: Orthopedic Surgeon / Physiotherapist.'),
(134, 'Joint stiffness issue', 'Joint stiffness', 'What it may mean: Inflammation from arthritis, injury or overuse. Home care: warm compresses, gentle movement, low-impact exercise. When to seek urgent help: severe swelling, sudden redness, high fever or loss of joint function. Recommended specialist: Rheumatologist / Orthopedic Surgeon.'),
(135, 'Muscle cramp issue', 'Muscle cramps', 'What it may mean: Electrolyte imbalance, dehydration or overuse. Home care: stretch the muscle, hydrate, replace electrolytes. When to seek urgent help: recurrent severe cramps, muscle weakness or suspicion of nerve disease. Recommended specialist: General Physician / Neurologist.'),
(136, 'Dizziness related issue', 'Dizziness', 'What it may mean: Low BP, dehydration, inner ear or neurological cause. Home care: sit/lie down until it passes, hydrate, avoid sudden standing. When to seek urgent help: fainting, weakness, vision changes, chest pain. Recommended specialist: ENT Specialist / Neurologist.'),
(137, 'Fainting related issue', 'Fainting', 'What it may mean: Temporary loss of consciousness from low blood flow to brain. Home care: lie flat, raise legs, ensure airway. When to seek urgent help: recurrent fainting, injury from fall, chest pain, palpitations. Recommended specialist: Cardiologist / Neurologist.'),
(138, 'Palpitation issue', 'Palpitations', 'What it may mean: Awareness of fast or irregular heartbeat due to arrhythmia, anxiety, or stimulants. Home care: sit quietly, avoid caffeine, practice slow breathing. When to seek urgent help: chest pain, fainting, severe shortness of breath. Recommended specialist: Cardiologist.'),
(139, 'Rapid heartbeat issue', 'Rapid heartbeat', 'What it may mean: Tachycardia from stress, fever, anemia, or cardiac causes. Home care: rest, reduce stimulants, hydrate. When to seek urgent help: chest pain, lightheadedness, syncope. Recommended specialist: Cardiologist.'),
(140, 'Slow heartbeat issue', 'Slow heartbeat', 'What it may mean: Bradycardia that can cause dizziness or fatigue; may be medication-related or cardiac. Home care: avoid sudden standing and notify doctor. When to seek urgent help: fainting, severe dizziness. Recommended specialist: Cardiologist.'),
(141, 'Skin rash issue', 'Skin rash', 'What it may mean: Allergic reaction, infection or dermatitis. Home care: keep area clean, avoid irritants, topical soothing creams. When to seek urgent help: spreading rash, fever, difficulty breathing, or signs of infection. Recommended specialist: Dermatologist.'),
(142, 'Itching related issue', 'Itching', 'What it may mean: Allergy, eczema, fungal infection or systemic disease. Home care: moisturize, avoid hot baths, antihistamines if allergic. When to seek urgent help: widespread rash with breathing difficulty or high fever. Recommended specialist: Dermatologist / Allergist.'),
(143, 'Red eyes issue', 'Red eyes', 'What it may mean: Conjunctivitis, irritation, allergy or uveitis. Home care: avoid touching, use lubricating drops, cold compress. When to seek urgent help: vision changes, severe pain, or light sensitivity. Recommended specialist: Ophthalmologist.'),
(144, 'Blurred vision issue', 'Blurred vision', 'What it may mean: Refractive error, infection, vascular or neurological problem. Home care: rest eyes, avoid driving. When to seek urgent help: sudden onset, double vision, severe headache, or vision loss. Recommended specialist: Ophthalmologist.'),
(145, 'Eye pain issue', 'Eye pain', 'What it may mean: Corneal abrasion, infection or glaucoma. Home care: avoid rubbing, protect from light, do not apply pressure. When to seek urgent help: severe pain, vision change, or discharge. Recommended specialist: Ophthalmologist.'),
(146, 'Ear pain issue', 'Ear pain', 'What it may mean: Otitis media, swimmer\'s ear or referred pain from teeth. Home care: warm compress, analgesics, avoid water exposure. When to seek urgent help: high fever, severe pain, hearing loss, swelling. Recommended specialist: ENT Specialist.'),
(147, 'Hearing loss issue', 'Hearing loss', 'What it may mean: Conductive or sensorineural causes like wax, infection, or nerve damage. Home care: avoid noise exposure, check for wax. When to seek urgent help: sudden loss, dizziness or bleeding. Recommended specialist: ENT Specialist / Audiologist.'),
(148, 'Tinnitus related issue', 'Ringing in ears', 'What it may mean: Perceived ringing due to ear conditions, medication or vascular causes. Home care: reduce caffeine, avoid loud noise, relax. When to seek urgent help: sudden severe tinnitus, hearing loss, or vertigo. Recommended specialist: ENT Specialist.'),
(149, 'Runny nose issue', 'Runny nose', 'What it may mean: Viral cold, allergy or sinusitis. Home care: saline nasal drops, rest, fluids. When to seek urgent help: high fever, severe facial pain, or greenish nasal discharge lasting >10 days. Recommended specialist: General Physician / ENT.'),
(150, 'Nasal congestion issue', 'Nasal congestion', 'What it may mean: Allergic or infectious swelling of nasal mucosa. Home care: steam inhalation, saline sprays, decongestants short-term. When to seek urgent help: difficulty breathing, high fever, or persistent symptoms. Recommended specialist: ENT Specialist.'),
(151, 'Sneezing issue', 'Sneezing', 'What it may mean: Allergy, cold or irritant exposure. Home care: avoid triggers, antihistamines, nasal saline. When to seek urgent help: sneezing with breathing difficulty or anaphylaxis signs. Recommended specialist: Allergist / ENT.'),
(152, 'Swallowing difficulty issue', 'Difficulty swallowing', 'What it may mean: Mechanical obstruction, inflammation, neurological causes. Home care: take soft foods, sip liquids slowly. When to seek urgent help: inability to swallow saliva, drooling, choking, or severe pain. Recommended specialist: ENT Specialist / Gastroenterologist.'),
(153, 'Loss of appetite issue', 'Loss of appetite', 'What it may mean: Acute illness, stress, medication or chronic disease. Home care: small nutritious meals, fluids, monitor weight. When to seek urgent help: significant weight loss, dehydration, prolonged poor intake. Recommended specialist: General Physician / Gastroenterologist.'),
(154, 'Weight loss issue', 'Weight loss', 'What it may mean: Unintended loss may suggest metabolic, GI or systemic disease. Home care: nutrient-dense meals, calorie-rich snacks. When to seek urgent help: rapid unexplained loss or associated symptoms like fever. Recommended specialist: General Physician / Endocrinologist.'),
(155, 'Weight gain issue', 'Weight gain', 'What it may mean: Lifestyle, metabolic or endocrine causes, or medication side effect. Home care: balanced diet, exercise, review meds. When to seek urgent help: rapid gain with swelling or breathlessness. Recommended specialist: Endocrinologist / Nutritionist.'),
(156, 'Excessive thirst issue', 'Excessive thirst', 'What it may mean: Dehydration or endocrine issues like diabetes. Home care: hydrate, check fluid intake, avoid sugary drinks. When to seek urgent help: extreme thirst with weight loss or increased urination. Recommended specialist: Endocrinologist / General Physician.'),
(157, 'Frequent urination issue', 'Frequent urination', 'What it may mean: UTI, diabetes or bladder issues. Home care: hydrate, monitor fluids, avoid holding urine. When to seek urgent help: burning, blood in urine, fever, or incontinence. Recommended specialist: Urologist / Endocrinologist.'),
(158, 'Burning urination issue', 'Burning urination', 'What it may mean: Usually UTI or urethritis. Home care: increase fluids, avoid irritants, see doctor for antibiotics if bacterial. When to seek urgent help: fever, flank pain, blood in urine. Recommended specialist: Urologist / General Physician.'),
(159, 'Hematuria issue', 'Blood in urine', 'What it may mean: Infection, stones, trauma, or malignancy. Home care: avoid strenuous activity and seek evaluation promptly. When to seek urgent help: large amounts of blood, clotting or pain. Recommended specialist: Urologist.'),
(160, 'Dark urine issue', 'Dark urine', 'What it may mean: Concentrated urine from dehydration, or liver/biliary issue. Home care: increase fluids. When to seek urgent help: persistent dark urine with jaundice or abdominal pain. Recommended specialist: General Physician / Hepatologist.'),
(161, 'Leg swelling issue', 'Swelling in legs', 'What it may mean: Venous insufficiency, lymphedema, heart or kidney disease. Home care: elevate legs, reduce salt, wear compression stockings. When to seek urgent help: sudden swelling, shortness of breath, chest pain. Recommended specialist: Cardiologist / Vascular Specialist.'),
(162, 'Hand swelling issue', 'Swelling in hands', 'What it may mean: Fluid retention, allergic reaction, or inflammation. Home care: elevate hands, reduce salt, cool compress. When to seek urgent help: facial or throat swelling, breathing difficulty (anaphylaxis). Recommended specialist: General Physician / Rheumatologist.'),
(163, 'Facial swelling issue', 'Swelling in face', 'What it may mean: Allergy, infection, or angioedema. Home care: cold compress, avoid allergens. When to seek urgent help: breathing difficulty or throat swelling — emergency care. Recommended specialist: Allergist / General Physician.'),
(164, 'Tremor related issue', 'Tremors', 'What it may mean: Essential tremor, Parkinsonism or metabolic causes. Home care: reduce caffeine, maintain rest and safety. When to seek urgent help: rapid progression, additional neurological signs. Recommended specialist: Neurologist.'),
(165, 'Numbness issue', 'Numbness', 'What it may mean: Nerve compression, neuropathy, or vascular issues. Home care: avoid pressure on limb, gentle movement. When to seek urgent help: sudden numbness with weakness or facial droop. Recommended specialist: Neurologist.'),
(166, 'Tingling issue', 'Tingling sensation', 'What it may mean: Peripheral neuropathy, nerve compression or vitamin deficiency. Home care: change posture, gentle stretching, correct nutrition. When to seek urgent help: progressive weakness, loss of function. Recommended specialist: Neurologist / Endocrinologist.'),
(167, 'Memory loss issue', 'Memory loss', 'What it may mean: Stress, sleep deprivation, medication effects or neurodegenerative disease. Home care: sleep hygiene, routine, mental exercises. When to seek urgent help: rapidly worsening memory or confusion. Recommended specialist: Neurologist / Geriatrician.'),
(168, 'Anxiety related issue', 'Anxiety', 'What it may mean: Excessive worry or anxiety disorder causing physical and mental symptoms. Home care: breathing exercises, mindfulness, avoid caffeine. When to seek urgent help: suicidal thoughts, severe panic, inability to function. Recommended specialist: Psychiatrist / Psychologist.'),
(169, 'Depression related issue', 'Depression', 'What it may mean: Persistent low mood, anhedonia, or major depressive disorder. Home care: talk therapy, routine, social support. When to seek urgent help: suicidal ideation, inability to care for self. Recommended specialist: Psychiatrist / Psychologist.'),
(170, 'Panic attack issue', 'Panic attacks', 'What it may mean: Sudden intense fear causing palpitations, breathlessness and sweating. Home care: grounding techniques, slow breathing, safe environment. When to seek urgent help: recurrent attacks limiting life or signs of heart issues. Recommended specialist: Psychiatrist / Psychologist.'),
(171, 'Insomnia issue', 'Insomnia', 'What it may mean: Difficulty falling or staying asleep from stress, habits, or medical conditions. Home care: sleep hygiene, consistent schedule, avoid screens before bed. When to seek urgent help: severe daytime dysfunction or underlying psychiatric symptoms. Recommended specialist: General Physician / Psychiatrist.'),
(172, 'Night sweat issue', 'Night sweats', 'What it may mean: Infection, hormonal changes or medication side effect. Home care: cool bedroom, lightweight clothing, hydrate. When to seek urgent help: associated fever, weight loss or persistent symptoms. Recommended specialist: General Physician / Endocrinologist.'),
(173, 'Shivering issue', 'Shivering', 'What it may mean: Response to cold or fever due to infection. Home care: warm clothing, treat fever, rest. When to seek urgent help: persistent shivering with high fever or altered mental status. Recommended specialist: General Physician.'),
(174, 'Chills issue', 'Chills', 'What it may mean: Often accompanies fever from infection. Home care: warm up, treat source of fever and hydrate. When to seek urgent help: severe infection signs like high fever, rigors, or sepsis. Recommended specialist: General Physician / Infectious Disease.'),
(175, 'Jaundice related issue', 'Yellow skin', 'What it may mean: Liver or biliary disease causing bilirubin buildup. Home care: avoid alcohol, rest, hydrate. When to seek urgent help: dark urine, pale stools, abdominal pain or confusion. Recommended specialist: Hepatologist / Gastroenterologist.'),
(176, 'Pale skin issue', 'Pale skin', 'What it may mean: Anemia or poor perfusion. Home care: iron-rich diet, rest, check for bleeding. When to seek urgent help: fainting, severe breathlessness, or rapid pulse. Recommended specialist: General Physician / Hematologist.'),
(177, 'Blue lips issue', 'Blue lips', 'What it may mean: Low oxygen saturation from respiratory or cardiac causes. Home care: sit upright, attempt to breathe calmly, seek urgent care. When to seek urgent help: any cyanosis (blue color) is an emergency. Recommended specialist: Emergency/General Physician / Pulmonologist / Cardiologist.'),
(178, 'Orthopnea issue', 'Difficulty breathing while lying down', 'What it may mean: Cardiac failure or pulmonary disease causing breathlessness when supine. Home care: sleep propped up on pillows, limit salt. When to seek urgent help: sudden worsening, swelling, or weight gain. Recommended specialist: Cardiologist.'),
(179, 'Hiccups issue', 'Persistent hiccups', 'What it may mean: Usually benign, sometimes due to irritation of diaphragm or GI cause. Home care: breath-hold, sip cold water, swallow granulated sugar. When to seek urgent help: hiccups lasting >48 hours or affecting sleep/eating. Recommended specialist: Gastroenterologist / General Physician.'),
(180, 'Dry mouth issue', 'Dry mouth', 'What it may mean: Dehydration, medications, or salivary gland issues. Home care: sip water frequently, sugar-free gum, oral hygiene. When to seek urgent help: severe difficulty swallowing or oral infections. Recommended specialist: Dentist / General Physician.'),
(181, 'Sweating issue', 'Excessive sweating', 'What it may mean: Hyperhidrosis, infection, or endocrine causes. Home care: breathable clothing, antiperspirants, stay cool. When to seek urgent help: sweating with chest pain, fainting, or infection signs. Recommended specialist: Dermatologist / Endocrinologist.'),
(182, 'Hair loss issue', 'Hair loss', 'What it may mean: Telogen effluvium, androgenic alopecia, nutritional deficiency, or thyroid disease. Home care: balanced diet, reduce styling stress, gentle hair care. When to seek urgent help: rapid diffuse loss or scalp inflammation. Recommended specialist: Dermatologist / Endocrinologist.'),
(183, 'Weakness issue', 'Weakness', 'What it may mean: Generalized weakness from infection, anemia, metabolic or neurological causes. Home care: rest, nutrition, hydrate. When to seek urgent help: progressive weakness, breathing difficulty or inability to move limbs. Recommended specialist: General Physician / Neurologist.'),
(184, 'Walking difficulty issue', 'Difficulty walking', 'What it may mean: Musculoskeletal, neurological, or balance disorders. Home care: use support, avoid uneven ground, physiotherapy. When to seek urgent help: sudden inability to walk, severe pain, or neurological deficits. Recommended specialist: Orthopedic Surgeon / Neurologist.'),
(185, 'Swollen lymph node issue', 'Swollen lymph nodes', 'What it may mean: Local or systemic infection, reactive lymphadenopathy, or malignancy. Home care: warm compress, monitor size and pain. When to seek urgent help: rapidly enlarging, hard, fixed nodes or systemic symptoms. Recommended specialist: General Physician / Infectious Disease / Hematologist.'),
(186, 'Mouth ulcer issue', 'Mouth ulcers', 'What it may mean: Aphthous ulcers, viral causes or nutritional deficiency. Home care: topical analgesic gels, avoid spicy foods, maintain oral hygiene. When to seek urgent help: very large, persistent ulcers or difficulty eating. Recommended specialist: Dentist / ENT.'),
(187, 'Gum bleeding issue', 'Gum bleeding', 'What it may mean: Poor oral hygiene, gingivitis, or clotting disorders. Home care: gentle brushing, flossing, salt-water rinses. When to seek urgent help: heavy bleeding, easy bruising, or bleeding from other sites. Recommended specialist: Dentist / Hematologist.'),
(188, 'Toothache issue', 'Toothache', 'What it may mean: Dental decay, abscess or gum disease. Home care: analgesics, warm saline rinses, avoid hot/cold triggers. When to seek urgent help: severe pain, swelling, fever, or spreading infection. Recommended specialist: Dentist.'),
(189, 'Chest tightness issue', 'Chest tightness', 'What it may mean: Angina, anxiety, asthma or reflux. Home care: rest, sit upright, use prescribed inhaler if asthma. When to seek urgent help: prolonged tightness, sweating, fainting or breathlessness. Recommended specialist: Cardiologist / Pulmonologist.'),
(190, 'Indigestion issue', 'Indigestion', 'What it may mean: Dyspepsia from overeating, reflux or peptic disease. Home care: smaller meals, avoid fatty/spicy foods, antacids. When to seek urgent help: severe pain, vomiting blood or weight loss. Recommended specialist: Gastroenterologist.'),
(191, 'Heartburn issue', 'Heartburn', 'What it may mean: Acid reflux (GERD). Home care: antacids, avoid late meals, elevate head of bed. When to seek urgent help: difficulty swallowing, weight loss, or severe chest pain. Recommended specialist: Gastroenterologist.'),
(192, 'Bloating issue', 'Gas or bloating', 'What it may mean: Dietary causes, IBS or obstruction. Home care: reduce gas-producing foods, gentle exercise, small meals. When to seek urgent help: severe pain, persistent vomiting or inability to pass stool/gas. Recommended specialist: Gastroenterologist.'),
(193, 'Loss of smell issue', 'Loss of smell', 'What it may mean: Nasal congestion, post-viral anosmia or neurologic causes. Home care: steam inhalation, treat nasal disease, smell training. When to seek urgent help: sudden loss with neurological signs or persistent >4 weeks. Recommended specialist: ENT Specialist / Neurologist.'),
(194, 'Loss of taste issue', 'Loss of taste', 'What it may mean: Often accompanies smell loss or oral issues. Home care: check oral hygiene, avoid smoking, try flavor-enhancing foods. When to seek urgent help: persistent loss affecting nutrition or associated neurological signs. Recommended specialist: ENT Specialist / General Physician.'),
(195, 'Dry skin issue', 'Dry skin', 'What it may mean: Dehydration, eczema or environmental factors. Home care: emollients, avoid hot showers, humidify environment. When to seek urgent help: widespread cracking, bleeding, or infection. Recommended specialist: Dermatologist.'),
(196, 'Peeling skin issue', 'Peeling skin', 'What it may mean: Sunburn, dermatitis, fungal infection or eczema. Home care: moisturize, avoid irritants, gentle cleansing. When to seek urgent help: widespread peeling, infection signs or severe pain. Recommended specialist: Dermatologist.'),
(197, 'Easy bruising issue', 'Bruising easily', 'What it may mean: Fragile vessels, clotting disorder or medication effects. Home care: avoid trauma, protect vulnerable areas, review medications. When to seek urgent help: spontaneous large bruises, bleeding elsewhere, or excessive bleeding. Recommended specialist: Hematologist / General Physician.'),
(198, 'Nosebleed issue', 'Nosebleeds', 'What it may mean: Local dryness, trauma, hypertension or clotting issues. Home care: pinch soft part of nose, lean forward, apply cold compress. When to seek urgent help: heavy bleeding >20 minutes, recurrent episodes, or bleeding with other symptoms. Recommended specialist: ENT Specialist / General Physician.'),
(199, 'Irregular heartbeat issue', 'Irregular heartbeat', 'What it may mean: Arrhythmia due to cardiac disease, electrolyte or thyroid issues. Home care: avoid stimulants, rest, monitor pulse. When to seek urgent help: fainting, chest pain, severe breathlessness. Recommended specialist: Cardiologist.'),
(200, 'Cold hand issue', 'Cold hands', 'What it may mean: Poor circulation, Reynaud\'s phenomenon or peripheral vascular disease. Home care: keep hands warm, avoid nicotine, exercise. When to seek urgent help: persistent color changes, pain or ulcers. Recommended specialist: Vascular Specialist / General Physician.'),
(201, 'Cold feet issue', 'Cold feet', 'What it may mean: Peripheral vascular disease, neuropathy or poor circulation. Home care: warm socks, exercise, check footwear. When to seek urgent help: persistent numbness, pain or non-healing sores. Recommended specialist: Vascular Specialist / Podiatrist.'),
(202, 'Hot flash issue', 'Hot flashes', 'What it may mean: Hormonal changes (menopause) or endocrine causes. Home care: loose clothing, cool environment, avoid triggers. When to seek urgent help: very severe symptoms affecting daily life or associated bleeding. Recommended specialist: Gynecologist / Endocrinologist.'),
(203, 'Vision loss issue', 'Vision loss', 'What it may mean: Urgent ocular or neurological cause like retinal detachment or stroke. Home care: avoid driving, protect eye, seek immediate care. When to seek urgent help: sudden loss, flashes, floaters or pain. Recommended specialist: Ophthalmologist.'),
(204, 'Eye redness issue', 'Eye redness', 'What it may mean: Conjunctivitis, uveitis, or trauma. Home care: avoid rubbing, use lubricants, cold compress. When to seek urgent help: pain, vision change, or light sensitivity. Recommended specialist: Ophthalmologist.'),
(205, 'Joint swelling issue', 'Joint swelling', 'What it may mean: Arthritis, trauma, or infection in the joint. Home care: RICE (rest, ice, compression, elevation), avoid weight-bearing. When to seek urgent help: fever, rapidly worsening pain or red hot joint. Recommended specialist: Rheumatologist / Orthopedic Surgeon.'),
(206, 'Muscle weakness issue', 'Muscle weakness', 'What it may mean: Neuromuscular disease, metabolic cause, or deconditioning. Home care: rest, appropriate nutrition, gentle rehab. When to seek urgent help: rapidly progressive weakness, breathing difficulty or swallowing trouble. Recommended specialist: Neurologist / Physiatrist.'),
(207, 'Speech difficulty issue', 'Difficulty speaking', 'What it may mean: Stroke, transient ischemic attack, or neurological disorder. Home care: keep person safe and seek emergency help. When to seek urgent help: sudden onset speech difficulty, facial droop or limb weakness — emergency. Recommended specialist: Neurologist / Speech Therapist.'),
(208, 'Concentration problem issue', 'Difficulty concentrating', 'What it may mean: Fatigue, stress, depression, ADHD or other medical issues. Home care: improve sleep, reduce distractions, structured tasks. When to seek urgent help: rapid cognitive decline or associated neurological signs. Recommended specialist: Psychiatrist / Neurologist.'),
(209, 'Confusion issue', 'Confusion', 'What it may mean: Delirium, metabolic disturbance, infection or neurological cause. Home care: ensure safety, hydration, reorientation. When to seek urgent help: sudden or severe confusion, fever, or reduced consciousness. Recommended specialist: General Physician / Neurologist.'),
(210, 'Seizure issue', 'Seizures', 'What it may mean: Epilepsy, metabolic disturbance, infection or brain lesion. Home care: keep person safe, do not restrain, roll to side if vomiting. When to seek urgent help: first-time seizure, prolonged seizure >5 minutes, or repeated seizures. Recommended specialist: Neurologist.'),
(211, 'Vomiting blood issue', 'Vomiting blood', 'What it may mean: GI bleeding from ulcer, varices or severe gastritis. Home care: do not eat or drink, seek emergency. When to seek urgent help: any hematemesis is an emergency. Recommended specialist: Gastroenterologist / Emergency Physician.'),
(212, 'Coughing blood issue', 'Coughing blood', 'What it may mean: Hemoptysis due to lung infection, bronchiectasis, TB or malignancy. Home care: sit upright, avoid exertion, seek urgent care. When to seek urgent help: large volume bleeding, breathlessness or collapse. Recommended specialist: Pulmonologist / Thoracic Surgeon.'),
(213, 'Chest burning issue', 'Chest burning', 'What it may mean: Acid reflux, esophagitis or cardiac cause. Home care: antacids, avoid spicy/fatty meals, elevate head on sleeping. When to seek urgent help: associated chest pain, sweating or fainting. Recommended specialist: Gastroenterologist / Cardiologist.'),
(214, 'Lower back stiffness issue', 'Lower back stiffness', 'What it may mean: Muscle strain, degenerative changes or inflammatory disease. Home care: gentle mobilization, heat therapy, avoid heavy lifting. When to seek urgent help: numbness, weakness in legs or bowel/bladder dysfunction. Recommended specialist: Orthopedic Surgeon / Physiotherapist.'),
(215, 'Shoulder pain issue', 'Shoulder pain', 'What it may mean: Rotator cuff strain, bursitis or impingement. Home care: rest, ice/heat, guided exercises. When to seek urgent help: severe trauma, fever or inability to move shoulder. Recommended specialist: Orthopedic Surgeon / Physiotherapist.'),
(216, 'Abnormal heartbeat feeling issue', 'Abnormal heartbeat feeling', 'What it may mean: Palpitations or arrhythmia often from anxiety, stimulants or cardiac cause. Home care: rest, avoid stimulants, record episodes. When to seek urgent help: fainting, chest pain or breathlessness. Recommended specialist: Cardiologist.'),
(217, 'Persistent tiredness issue', 'Persistent tiredness', 'What it may mean: Chronic fatigue due to sleep disorders, endocrine issues or chronic disease. Home care: sleep hygiene, balanced diet, graded activity. When to seek urgent help: rapid functional decline or significant weight change. Recommended specialist: General Physician / Endocrinologist.'),
(218, 'Slow wound healing issue', 'Slow wound healing', 'What it may mean: Diabetes, poor circulation, infection or nutritional deficiency. Home care: keep wound clean and dry, good nutrition, avoid smoking. When to seek urgent help: spreading redness, pus, fever or non-healing ulcers. Recommended specialist: Wound Care Specialist / General Physician / Endocrinologist.');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `name`, `address`, `latitude`, `longitude`, `phone`) VALUES
(1, 'Government Erode Medical College', '7HJ8+8XQ, Kunnathur Rd - Perundurai, Perundurai, Tamil Nadu 638053', 11.28123672940598, 77.56703853602265, '04294220913'),
(2, 'LIFEGUARD HOSPITAL', 'Tiruppur - Palladam Rd, Sheriff Colony, Extension, Tiruppur, Tamil Nadu 641605', 11.079281424166425, 77.34198882752155, '09487051010'),
(3, 'Kritiga Hospital', '38WP+9X9, Mangalam Road, Karuvampalayam, Kumaran Road, Mangalam Road, Tiruppur, Tamil Nadu 641604', 11.096234348080072, 77.33751428650808, '04212246466'),
(4, 'KRISSHIV HOSPITAL', '274/2, Nachammal Colony 2nd street Andipalayam, Tiruppur, Tamil Nadu 641687', 11.097266471355201, 77.3152582793974, '09080985220'),
(5, 'AMC Super Speciality Hospital', '141, Kamaraj Road, Palladam Main Rd, near Old Bus Stand, Tiruppur, Tamil Nadu 641604', 11.096403982594289, 77.34896851349193, '08999777444');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacies`
--

CREATE TABLE `pharmacies` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pharmacies`
--

INSERT INTO `pharmacies` (`id`, `name`, `address`, `phone`, `latitude`, `longitude`) VALUES
(1, 'SACHIN PHARMACY', 'K N S NAGER, BUS STOP, 2/368F, DHANALAKSHMI NAGER, Periyandipalayam, Andipalayam, Tiruppur, Tamil Nadu 641687', '9952133070', 11.087244243231, 77.31319665767207),
(2, 'Bawaa Pharmacy', 'Pushpa theatre, bus stop, 346, Avinashi - Tiruppur Rd, KNP Puram, Odakkadu, Tiruppur, Tamil Nadu 641602', '8220060313', 11.11104312184903, 77.33828968650808),
(3, 'SUGAM MEDICAL', 'Opp Classic Polo Corporate office, Mullai Nagar, Kulathuputhur, Periyandipalayam, Tiruppur, Andipalayam, Tamil Nadu 641687', '9790577201', 11.090483541677404, 77.31312631349192),
(4, 'Sevalaya Pharmacy Branch', '38X7+QRP, Andipalayam, Andipalayam, Pirivu, Tiruppur, Tamil Nadu 641687', '9789486666', 11.0996445784472, 77.31451995581986),
(5, 'Apple Pharmacy', 'Perundurai Road, Erode - Perundurai - Kangeyam Rd, Maruthi Nagar, Thindal, Tamil Nadu 638012', '9790577201', 11.320781841594277, 77.67807668280366);

-- --------------------------------------------------------

--
-- Table structure for table `symptom`
--

CREATE TABLE `symptom` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `symptom`
--

INSERT INTO `symptom` (`id`, `name`) VALUES
(1, 'Fever'),
(2, 'Cough'),
(3, 'Headache'),
(4, 'Sore throat'),
(5, 'knee pain'),
(6, 'Chest pain'),
(7, 'Shortness of breath'),
(8, 'Fatigue'),
(9, 'Nausea'),
(10, 'Vomiting'),
(11, 'Diarrhea'),
(12, 'Constipation'),
(13, 'Abdominal pain'),
(14, 'Back pain'),
(15, 'Neck pain'),
(16, 'Joint stiffness'),
(17, 'Muscle cramps'),
(18, 'Dizziness'),
(19, 'Fainting'),
(20, 'Palpitations'),
(21, 'Rapid heartbeat'),
(22, 'Slow heartbeat'),
(23, 'Skin rash'),
(24, 'Itching'),
(25, 'Red eyes'),
(26, 'Blurred vision'),
(27, 'Eye pain'),
(28, 'Ear pain'),
(29, 'Hearing loss'),
(30, 'Ringing in ears'),
(31, 'Runny nose'),
(32, 'Nasal congestion'),
(33, 'Sneezing'),
(34, 'Difficulty swallowing'),
(35, 'Loss of appetite'),
(36, 'Weight loss'),
(37, 'Weight gain'),
(38, 'Excessive thirst'),
(39, 'Frequent urination'),
(40, 'Burning urination'),
(41, 'Blood in urine'),
(42, 'Dark urine'),
(43, 'Swelling in legs'),
(44, 'Swelling in hands'),
(45, 'Swelling in face'),
(46, 'Tremors'),
(47, 'Numbness'),
(48, 'Tingling sensation'),
(49, 'Memory loss'),
(50, 'Anxiety'),
(51, 'Depression'),
(52, 'Panic attacks'),
(53, 'Insomnia'),
(54, 'Night sweats'),
(55, 'Shivering'),
(56, 'Chills'),
(57, 'Yellow skin'),
(58, 'Pale skin'),
(59, 'Blue lips'),
(60, 'Difficulty breathing while lying down'),
(61, 'Persistent hiccups'),
(62, 'Dry mouth'),
(63, 'Excessive sweating'),
(64, 'Hair loss'),
(65, 'Weakness'),
(66, 'Difficulty walking'),
(67, 'Swollen lymph nodes'),
(68, 'Mouth ulcers'),
(69, 'Gum bleeding'),
(70, 'Toothache'),
(71, 'Chest tightness'),
(72, 'Indigestion'),
(73, 'Heartburn'),
(74, 'Gas or bloating'),
(75, 'Loss of smell'),
(76, 'Loss of taste'),
(77, 'Dry skin'),
(78, 'Peeling skin'),
(79, 'Bruising easily'),
(80, 'Nosebleeds'),
(81, 'Irregular heartbeat'),
(82, 'Cold hands'),
(83, 'Cold feet'),
(84, 'Hot flashes'),
(85, 'Vision loss'),
(86, 'Eye redness'),
(87, 'Joint swelling'),
(88, 'Muscle weakness'),
(89, 'Difficulty speaking'),
(90, 'Difficulty concentrating'),
(91, 'Confusion'),
(92, 'Seizures'),
(93, 'Vomiting blood'),
(94, 'Coughing blood'),
(95, 'Chest burning'),
(96, 'Lower back stiffness'),
(97, 'Shoulder pain'),
(98, 'Abnormal heartbeat feeling'),
(99, 'Persistent tiredness'),
(100, 'Slow wound healing');

-- --------------------------------------------------------

--
-- Table structure for table `symptoms`
--

CREATE TABLE `symptoms` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `password`) VALUES
(1, 'admin@example.com', 'Admin', 'admin'),
(2, 'santhosh@gmail.com', 'santhosh', '12345'),
(3, 'sasi@gmail.com', 'sasi', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`) VALUES
(1, 'Admin', 'admin@example.com', 'admin', NULL),
(2, 'santhosh', 'santhosh@gmail.com', '12345', NULL),
(3, 'sasi', 'sasi@gmail.com', '12345', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_health_record`
--

CREATE TABLE `user_health_record` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `symptoms` varchar(1000) DEFAULT NULL,
  `diagnosis` varchar(1000) DEFAULT NULL,
  `recorded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_health_records`
--

CREATE TABLE `user_health_records` (
  `id` bigint(20) NOT NULL,
  `diagnosis` varchar(255) DEFAULT NULL,
  `recorded_at` datetime(6) DEFAULT NULL,
  `symptoms` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_health_records`
--

INSERT INTO `user_health_records` (`id`, `diagnosis`, `recorded_at`, `symptoms`, `user_id`, `description`) VALUES
(1, 'Common cold possible.', NULL, 'Cough, Headache', NULL, NULL),
(2, 'No matching condition found.', NULL, 'Sore throat', NULL, NULL),
(3, 'You may have a viral infection.', NULL, 'Fever, Sore throat', NULL, NULL),
(4, 'Common cold possible.', NULL, 'Cough', NULL, NULL),
(5, 'You may have a viral infection.', NULL, 'Fever, Cough, Headache', NULL, NULL),
(6, 'You may have a viral infection.', NULL, 'Fever, Cough', NULL, NULL),
(7, 'You may have a viral infection.', NULL, 'Fever', NULL, NULL),
(8, 'No matching condition found.', NULL, 'Sore throat', NULL, NULL),
(9, 'Common cold possible.', NULL, 'Cough, Headache, Sore throat', NULL, NULL),
(10, 'You may have a viral infection.', NULL, 'Fever, Cough, Headache, Sore throat', NULL, NULL),
(11, 'No matching condition found.', NULL, 'Sore throat', NULL, NULL),
(12, 'Possible migraine.', NULL, 'Headache, Sore throat', NULL, NULL),
(13, 'You may have a viral infection.', NULL, 'Fever, Cough, Headache, Sore throat', NULL, NULL),
(14, 'No matching condition found.', NULL, 'Sore throat', NULL, NULL),
(15, 'No matching condition found.', NULL, 'Sore throat', NULL, NULL),
(16, 'Common cold possible.', NULL, 'Cough, Sore throat', NULL, NULL),
(17, 'No matching condition found.', NULL, 'fever', NULL, NULL),
(18, 'You may have a viral infection.', NULL, 'Fever, fever', NULL, NULL),
(19, 'You may have a viral infection.', NULL, 'Fever', NULL, NULL),
(20, 'Possible migraine.', NULL, 'Sore throat, Headache', NULL, NULL),
(21, 'Possible migraine.', NULL, 'Headache', NULL, NULL),
(22, 'You may have a viral infection.', NULL, 'Fever', NULL, NULL),
(23, 'Common cold possible.', NULL, 'Cough', NULL, NULL),
(24, 'Common cold possible.', NULL, 'Cough', NULL, NULL),
(25, 'No matching condition found.', NULL, 'cough', NULL, NULL),
(26, 'Possible migraine.', NULL, 'Headache', NULL, NULL),
(27, 'Possible migraine.', NULL, 'Headache', NULL, NULL),
(28, 'Possible migraine.', NULL, 'Headache', NULL, NULL),
(29, 'Possible migraine.', NULL, 'Headache', 1, NULL),
(30, 'Possible migraine.', NULL, 'Headache', 1, NULL),
(31, 'Possible migraine.', NULL, 'Headache', 1, NULL),
(32, 'Possible migraine.', NULL, 'Headache', 1, NULL),
(33, 'Possible migraine.', NULL, 'Headache', 2, NULL),
(34, 'Possible migraine.', NULL, 'Headache', 2, NULL),
(35, 'No matching condition found.', NULL, 'knee pain', 2, NULL),
(36, 'No matching condition found.', NULL, 'knee pain', 2, NULL),
(37, 'No matching condition found.', NULL, 'knee pain', 2, NULL),
(38, 'No matching condition found.', NULL, 'Knee pain', 2, NULL),
(39, 'No matching condition found.', NULL, 'Knee Pain', 2, NULL),
(40, 'Common cold possible.', NULL, 'Cough, Knee Pain', 2, NULL),
(41, 'Common cold possible.', NULL, 'Cough, Knee Pain', 2, NULL),
(42, 'Common cold possible.', NULL, 'Cough, Knee Pain', 2, NULL),
(43, 'No matching condition found.', NULL, 'Knee Pain', 2, NULL),
(44, 'No matching condition found.', NULL, 'knee pain', 2, NULL),
(45, 'No matching condition found.', NULL, 'Knee Pain', 2, NULL),
(46, 'No matching condition found.', NULL, 'knee pain', 2, NULL),
(47, 'No matching condition found.', NULL, 'knee pain', 2, NULL),
(48, 'No matching condition found.', NULL, 'Knee Pain', 2, NULL),
(49, 'No matching condition found.', NULL, 'Knee Pain', 2, NULL),
(50, 'No matching condition found.', NULL, 'knee pain', 2, NULL),
(51, 'No matching condition found.', NULL, 'Knee Pain', 2, NULL),
(52, 'Possible migraine.', NULL, 'Headache, Knee Pain', 2, NULL),
(53, 'No matching condition found.', NULL, 'knee injury', 2, NULL),
(54, 'No matching condition found.', NULL, 'knee pain, swelling, stiffness', 2, NULL),
(55, 'No matching condition found.', NULL, 'knee pain', 2, NULL),
(56, 'No matching condition found.', NULL, 'knee pain', 2, NULL),
(57, 'Possible migraine.', NULL, 'Headache, knee pain', 2, NULL),
(58, 'Flu', NULL, 'Headache', 2, NULL),
(59, 'Knee Injury', NULL, 'k', 2, NULL),
(60, 'Knee Injury', NULL, 'knee pain', 2, NULL),
(61, 'Knee Injury', NULL, 'knee pain', 2, NULL),
(62, 'Knee Injury', NULL, 'knee pain, swelling, stiffness', 2, NULL),
(63, 'Knee Injury', NULL, 'knee pain, swelling, stiffness', 2, NULL),
(64, 'Knee injury or strain can cause pain, swelling, and difficulty moving the joint.', NULL, 'stiffness', 2, NULL),
(65, 'Flu', NULL, 'Headache', 2, 'Influenza - high fever and body ache.'),
(66, 'Flu', NULL, 'Fever, Headache', 2, 'Influenza - high fever and body ache.'),
(67, 'Flu', NULL, 'Fever', 2, 'Influenza - high fever and body ache.'),
(68, 'Common Cold', NULL, 'Fever, Cough, Sore throat', 2, 'A viral infection causing cough and sore throat.'),
(69, 'Flu', NULL, 'Headache', 2, 'Influenza - high fever and body ache.'),
(70, 'Knee injury', NULL, 'knee pain', 2, 'Knee injury or strain can cause pain, swelling, and difficulty moving the joint.'),
(71, 'Flu', NULL, 'fev', 2, 'Influenza - high fever and body ache.'),
(72, 'Knee injury', NULL, 'kn', 2, 'Knee injury or strain can cause pain, swelling, and difficulty moving the joint.'),
(73, 'No matching condition found.', NULL, 'stomach', 2, ''),
(74, 'Flu', NULL, 'Headache', 2, 'Influenza - high fever and body ache.'),
(80, 'Flu', NULL, 'Headache', 2, 'Influenza - high fever and body ache.'),
(82, 'Flu', NULL, 'Headache', 3, 'Influenza - high fever and body ache.'),
(83, 'Knee injury', NULL, 'knee pain', 3, 'Knee injury or strain can cause pain, swelling, and difficulty moving the joint.'),
(84, 'No matching condition found.', NULL, 'vommit', 3, ''),
(85, 'Gastritis', NULL, 'vo', 3, 'Inflammation of the stomach lining leading to upper abdominal pain and vomiting.'),
(86, 'No matching condition found.', NULL, 'heart', 3, ''),
(87, 'No matching condition found.', NULL, 'heart attack', 3, ''),
(88, 'Migraine', NULL, 'red', 3, 'A neurological condition causing severe throbbing headache, nausea, and sensitivity to light.'),
(89, 'No matching condition found.', NULL, 'Back pain', 3, ''),
(90, 'No matching condition found.', NULL, 'vommit', 3, ''),
(91, 'No matching condition found.', NULL, 'vommite', 3, ''),
(92, 'Vomiting related issue', NULL, 'vomit', 3, 'Forceful expulsion of stomach contents through the mouth.'),
(93, 'Muscle cramp issue', NULL, 'Muscle cramps', 3, 'Sudden involuntary muscle contraction.'),
(94, 'Fever related issue', NULL, 'Fever, fever', 3, 'What it may mean: Elevated body temperature often from infection. Home care: rest, drink plenty of fluids, cool compress, paracetamol if needed. When to seek urgent help: persistent high fever >48 hours, very high temperature, seizures, or altered consciousness. Recommended specialist: General Physician.'),
(95, 'No matching condition found.', NULL, 'vommit', 3, ''),
(96, 'Vomiting related issue', NULL, 'vomit', 3, 'What it may mean: Infection, food poisoning, obstruction or other GI issues. Home care: rehydrate with ORS, rest, avoid solids until settled. When to seek urgent help: persistent vomiting, signs of dehydration, blood in vomit. Recommended specialist: Gastroenterologist.'),
(97, 'Muscle cramp issue', NULL, 'Muscle cramps', 3, 'What it may mean: Electrolyte imbalance, dehydration or overuse. Home care: stretch the muscle, hydrate, replace electrolytes. When to seek urgent help: recurrent severe cramps, muscle weakness or suspicion of nerve disease. Recommended specialist: General Physician / Neurologist.'),
(98, 'Headache related issue', NULL, 'Headache', 2, 'What it may mean: Pain from tension, migraine, dehydration, or other causes. Home care: rest, hydrate, OTC analgesics, avoid triggers. When to seek urgent help: sudden severe headache, weakness, confusion, vision changes, or vomiting. Recommended specialist: Neurologist.'),
(99, 'No matching condition found.', NULL, 'irri', 2, ''),
(100, 'No matching condition found.', NULL, 'eye', 2, ''),
(101, 'Chest pain related issue', NULL, 'st', 2, 'What it may mean: Can indicate cardiac, pulmonary, GI or musculoskeletal cause. Home care: sit upright, rest, avoid exertion. When to seek urgent help: sudden severe pain, sweating, fainting, breathlessness — call emergency immediately. Recommended specialist: Cardiologist.'),
(102, 'No matching condition found.', NULL, 'stomach', 2, ''),
(103, 'No matching condition found.', NULL, 'kn\'', 2, ''),
(104, 'Knee pain related issue', NULL, 'kn', 2, 'What it may mean: Strain, sprain, arthritis or injury. Home care: rest, ice, compression, elevation (RICE), avoid weight-bearing. When to seek urgent help: deformity, inability to walk, severe swelling, fever. Recommended specialist: Orthopedic Surgeon.'),
(105, 'No matching condition found.', NULL, 'ey', 2, ''),
(106, 'Sore throat related issue', NULL, 're', 2, 'What it may mean: Throat irritation or infection (viral/bacterial). Home care: warm salt-water gargles, fluids, lozenges. When to seek urgent help: severe pain, difficulty breathing or swallowing, high fever. Recommended specialist: ENT Specialist.'),
(107, 'Knee pain related issue', NULL, 'pain', 2, 'What it may mean: Strain, sprain, arthritis or injury. Home care: rest, ice, compression, elevation (RICE), avoid weight-bearing. When to seek urgent help: deformity, inability to walk, severe swelling, fever. Recommended specialist: Orthopedic Surgeon.'),
(108, 'No matching condition found.', NULL, 'leg', 2, ''),
(109, 'No matching condition found.', NULL, 'itching', 2, ''),
(110, 'No matching condition found.', NULL, 'Itching', 2, ''),
(111, 'Itching related issue', NULL, 'Itching', 2, 'What it may mean: Allergy, eczema, fungal infection or systemic disease. Home care: moisturize, avoid hot baths, antihistamines if allergic. When to seek urgent help: widespread rash with breathing difficulty or high fever. Recommended specialist: Dermatologist / Allergist.'),
(112, 'Red eyes issue', NULL, 'eye', 2, 'What it may mean: Conjunctivitis, irritation, allergy or uveitis. Home care: avoid touching, use lubricating drops, cold compress. When to seek urgent help: vision changes, severe pain, or light sensitivity. Recommended specialist: Ophthalmologist.'),
(113, 'Leg swelling issue', NULL, 'leg', 2, 'What it may mean: Venous insufficiency, lymphedema, heart or kidney disease. Home care: elevate legs, reduce salt, wear compression stockings. When to seek urgent help: sudden swelling, shortness of breath, chest pain. Recommended specialist: Cardiologist / Vascular Specialist.'),
(114, 'No matching condition found.', NULL, 'leg pain', 2, ''),
(115, 'Back pain issue', NULL, 'back', 2, 'What it may mean: Muscle strain, disc problems, or nerve impingement. Home care: rest, heat/ice, gentle stretching, avoid heavy lifting. When to seek urgent help: loss of bladder/bowel control, weakness in legs, severe progressive pain. Recommended specialist: Orthopedic Surgeon / Physiotherapist.'),
(116, 'Headache related issue', NULL, 'Headache', 2, 'What it may mean: Pain from tension, migraine, dehydration, or other causes. Home care: rest, hydrate, OTC analgesics, avoid triggers. When to seek urgent help: sudden severe headache, weakness, confusion, vision changes, or vomiting. Recommended specialist: Neurologist.'),
(117, 'Headache related issue', NULL, 'Headache', 3, 'What it may mean: Pain from tension, migraine, dehydration, or other causes. Home care: rest, hydrate, OTC analgesics, avoid triggers. When to seek urgent help: sudden severe headache, weakness, confusion, vision changes, or vomiting. Recommended specialist: Neurologist.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diseases`
--
ALTER TABLE `diseases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacies`
--
ALTER TABLE `pharmacies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `symptom`
--
ALTER TABLE `symptom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `symptoms`
--
ALTER TABLE `symptoms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_health_record`
--
ALTER TABLE `user_health_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_health_records`
--
ALTER TABLE `user_health_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6eqhy3odtmlguav8io47xcbwl` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diseases`
--
ALTER TABLE `diseases`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmacies`
--
ALTER TABLE `pharmacies`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `symptom`
--
ALTER TABLE `symptom`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `symptoms`
--
ALTER TABLE `symptoms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_health_record`
--
ALTER TABLE `user_health_record`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_health_records`
--
ALTER TABLE `user_health_records`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_health_record`
--
ALTER TABLE `user_health_record`
  ADD CONSTRAINT `user_health_record_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_health_records`
--
ALTER TABLE `user_health_records`
  ADD CONSTRAINT `FK6eqhy3odtmlguav8io47xcbwl` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKartebmnm7cugib7y91d1irrj7` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
