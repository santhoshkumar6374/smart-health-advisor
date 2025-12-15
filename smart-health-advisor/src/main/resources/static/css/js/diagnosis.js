// diagnosis.js – Symptom Checker Logic

function analyzeSymptoms() {
    let symptom = document.getElementById("symptom").value.toLowerCase();
    let resultBox = document.getElementById("diagnosisResult");

    let diagnosis = "";

    if (symptom.includes("fever")) {
        diagnosis = "You may have a viral infection. Stay hydrated.";
    } else if (symptom.includes("cold") || symptom.includes("cough")) {
        diagnosis = "This looks like a common cold. Take rest.";
    } else if (symptom.includes("headache")) {
        diagnosis = "Possible migraine or stress. Try relaxation.";
    } else if (symptom.trim() === "") {
        diagnosis = "Please enter symptoms.";
    } else {
        diagnosis = "No matching condition found. Consult a doctor.";
    }

    resultBox.innerText = diagnosis;
}
