# BioTrack — Vital Signs Dashboard

**An educational Biomedical Technology + IT portfolio project**

BioTrack is a browser-based dashboard for exploring synthetic vital-sign records. It demonstrates how frontend development, basic data validation, visualization and local data storage can be applied to a biomedical technology use case.

> **Disclaimer:** BioTrack is an educational prototype, not a medical device or clinical decision-support system. It uses fictional data and has not been clinically validated. Do not enter real patient information.

## Features

- **Vital-sign dashboard:** Summary statistics for heart rate, peripheral oxygen saturation (SpO₂) and temperature.
- **Data entry:** Add sample records with a sample ID, timestamp and measurement values.
- **Input validation:** Validate required fields, numeric bounds, timestamps and duplicate sample IDs.
- **Data-quality report:** Identify technical validation issues for further review.
- **Data visualization:** Plot a selected vital-sign measurement across sample records.
- **Search and filtering:** Find records by sample ID, label or timestamp and filter by data quality.
- **CSV export:** Download filtered records for further exploration in spreadsheet software.
- **Local persistence:** Store sample records in the browser using `localStorage`.
- **Responsive interface:** Dashboard layout adapts to different screen sizes.

## Technology Stack

- HTML5
- CSS3
- JavaScript
- HTML Canvas API
- Browser `localStorage`
- CSV file generation using JavaScript

## Getting Started

### Requirements

A modern web browser such as Google Chrome, Microsoft Edge or Firefox. No package installation or paid service is required.

### Run locally

1. Clone or download this repository.
2. Open `index.html` in your browser.

If the application file is currently named `biotrack.html`, either open that file directly or rename it to `index.html` before uploading it.

## How to Use

1. Open the dashboard to review the fictional sample records.
2. Use the search field and data-quality filter to find records.
3. Select a vital-sign measurement to change the chart.
4. Enter a new synthetic measurement in the form.
5. Try submitting a duplicate sample ID to test validation.
6. Refresh the page to test local persistence.
7. Export the filtered records as a CSV file.

## Data and Validation

All built-in records are fictional and intended only for software demonstration.

The application checks required fields, numeric input bounds, timestamp validity and duplicate IDs. These checks demonstrate basic data-quality practices; they do not establish that a measurement is clinically accurate or that a person is healthy.

The prototype does not connect to medical devices, hospital information systems, electronic health records or external databases.

## Data Storage and Privacy

BioTrack uses browser `localStorage` to persist records locally. Data is not automatically synchronized across devices.

Browser storage is not designed to provide the access controls, auditability, encryption, backup or governance required for clinical information systems. Use synthetic data only.

## Current Limitations

- No backend or user authentication.
- No integration with real monitoring equipment.
- No clinical validation or diagnostic functionality.
- No multi-user access or cross-device synchronization.
- Browser storage may be cleared or unavailable.
- The chart is a basic visualization rather than a clinically validated trend-analysis tool.

## Future Improvements

- Add automated unit tests for validation and filtering.
- Separate application logic into maintainable JavaScript modules.
- Introduce a backend API and database for synthetic records.
- Add import support with CSV schema validation.
- Improve accessibility and keyboard navigation.
- Add reproducible test data and documented test cases.
- Explore simulated medical-device data integration in a safe test environment.

## Learning Outcomes

This project provides practical experience with:

- Frontend application development.
- Representing biomedical measurements in software.
- Input validation and data-quality checks.
- Data visualization and CSV handling.
- Browser-based persistence.
- Technical documentation and software testing.
- Responsible communication of the limitations of health-related software.

## Author

A Biomedical Technology undergraduate and BIT student exploring the intersection of biomedical measurements, healthcare technology and software development.

## License

Choose and add an appropriate open-source license before redistributing the project. Until a license is added, do not assume others have permission to reuse the code.
