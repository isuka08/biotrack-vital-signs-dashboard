# BioTrack — Biomedical Data Analytics

BioTrack is an educational web-based dashboard for recording, filtering, visualising, and exporting fictional vital-sign measurements. The project combines biomedical technology concepts with frontend software development and data analytics.

## Live Application

**GitHub Pages:** https://isuka08.github.io/biotrack-vital-signs-dashboard/

**Repository:** https://github.com/isuka08/biotrack-vital-signs-dashboard

## Project Goals

- Demonstrate practical biomedical data handling concepts.
- Visualise vital-sign measurements in a clean dashboard.
- Apply basic data-quality validation to structured measurements.
- Provide filtering and descriptive analytics for a small dataset.
- Export structured records as CSV for further analysis.
- Demonstrate frontend development using standard web technologies.

## Current Features

### Dashboard
- Total measurement records
- Average heart rate
- Average SpO₂
- Data-quality review count
- Descriptive statistics
- Vital-sign trend visualisation

### Measurement Management
- Add fictional measurement records
- Duplicate Patient ID prevention
- Input validation
- Timestamp validation
- Search by ID and notes
- Data-quality filtering
- Date-range filtering

### Data & Export
- Browser localStorage persistence
- CSV export of the filtered dataset
- Fictional sample dataset
- V3-to-V4 localStorage migration support

## Technology Stack

- **HTML5** — application structure
- **CSS3** — responsive interface and visual design
- **JavaScript (ES6+)** — application logic and data processing
- **Canvas API** — chart rendering
- **Web Storage API** — local browser persistence
- **CSV** — portable data export
- **GitHub Pages** — static deployment

## Data Model

Each measurement record contains:

| Field | Description |
|---|---|
| Patient ID | Unique synthetic identifier |
| Timestamp | Measurement date and time |
| Heart Rate | Beats per minute |
| SpO₂ | Oxygen saturation percentage |
| Temperature | Temperature in °C |
| Notes | Optional record note |

## Data Quality

BioTrack performs basic software-level checks including:

- Required identifier validation
- Numeric range validation
- Timestamp validation
- Future timestamp detection
- Duplicate identifier prevention

These checks are **software validation rules only** and are not clinical decision rules.

## Privacy & Safety

BioTrack is an **educational prototype, not a medical device**. The included dataset is fictional. The application should not be used for diagnosis, treatment, patient monitoring, or clinical decision-making.

Do not enter identifiable real patient information. Browser localStorage is not designed as a secure clinical database and data remains local to the browser unless exported or cleared.

## Portfolio Context

This project demonstrates the intersection of:

**Biomedical Technology + Health Informatics + Data Analytics + Frontend Development**

It was developed as a portfolio project to demonstrate practical software and biomedical-data skills using a lightweight, dependency-free architecture.

## Roadmap

Potential future improvements include:

- Interactive multi-series analytics
- Measurement editing and deletion with confirmation
- JSON backup and restore
- More advanced data-quality reporting
- Accessibility improvements
- Automated browser testing
- Optional backend/database architecture for non-clinical research prototypes

## Disclaimer

This project is intended for education, learning, and portfolio demonstration only. It is not intended for clinical use and has not been validated or certified as a medical device.
