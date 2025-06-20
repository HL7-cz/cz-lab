### Common Actors in the Laboratory Domain

The actors described in this chapter represent an abstraction of users and information systems involved in various laboratory processes. The names of the actors are derived from the documentation of relevant IHE profiles (XDS, XD-LAB).

**Order Placer**: The Order Placer is a specialized software application for creating laboratory test orders. It allows the creation and submission of orders to the laboratory.

**Order Filler**: The Order Filler is a laboratory application responsible for splitting each received order or group of orders from the Order Placer into appropriate sets of work orders for individual parts of the laboratory. These orders are forwarded to the appropriate component of the laboratory information system responsible for performing the tests and registering the results (Automation Manager). Upon receiving test results, the Order Filler consolidates them according to the respective order(s), ensures validation, and transfers them to the Order Result Tracker on the clinical side.

**LIMS (Automation Manager)**: The Automation Manager is implemented as part of the Laboratory Information System and is responsible for performing sample analyses and recording test results. It manages automation across the laboratory or its sections. Automation includes the integration and linking of automatic or robotic transport systems, analytical systems, and devices performing pre- or post-analytical processes, such as automatic centrifuges, aliquoting devices, cap removers/applicators, sorters, and storage systems. It receives work orders from the Order Filler, manages the execution of ordered tests on analyzers, and sends technically validated results back to the Order Filler application.

**Order Result Tracker**: This system receives test results and records all status changes reported by the Order Filler application. Measurements are always stored in the context of the order that requested them and include all relevant information related to the order. The Order Result Tracker works with result reports received from the laboratory. It may also function as a central, regional, or local EHR document repository from which the order placer or another authorized party can later retrieve the results.

The patient can also view or receive the results.

**Document Source**: The document source is the creator and publisher of the document. It is responsible for submitting documents to the document repository (see next actor) and provides metadata for the document to be registered in the document registry (see actor below).

**Document Consumer**: The document consumer queries the document registry to retrieve documents matching specific criteria and obtains the selected documents from one or more document repositories.

**Document Registry**: The document registry stores metadata about each registered document. This may also include a reference to the actual document in the repository. The registry responds to queries from the document consumer about documents matching specific criteria. During registration, it enforces certain technical rules specific to healthcare.

**Document Repository**: The document repository is responsible for the persistent storage of documents and their registration in the appropriate registry. It assigns a specific ID to documents, used later for searching and retrieving them by the document consumer.

---

### Use Case Description: "Laboratory Result Report"

| Name | UC5.1 Laboratory Result Report |
| --- | --- |
| Purpose | This use case describes how a healthcare provider (order requester) receives the results of laboratory analyses. The results may be delivered directly to the order requester or through a laboratory result repository (central, regional, or local EHR system) from which the requester or other participating healthcare entity can retrieve them. The patient can also receive and view the results. |
| Importance | Laboratory medicine is a fundamental part of any healthcare system. It plays a critical role in many clinical decisions, often providing physicians, nurses, and other healthcare providers with key information necessary for prevention, diagnosis, treatment, and disease management. The range of tests offered spans from highly standardized and cost-effective tests, such as blood counts or basic clinical chemistry, to innovative and personalized testing in medical genetics. All healthcare professionals involved in a patient care episode should have access to relevant lab results as part of their role. Laboratory results often originate from multiple sources. For end users, transparent and source-independent viewing of all results provides essential support for decision-making. Patients should also have access to laboratory results. The availability of electronic structured laboratory result reports helps reduce errors caused by manually transcribing paper results into the patient record. Access to all test results, regardless of the requester, reduces unnecessary duplicate testing, saving costs and reducing patient burden. Laboratory reports are explicitly referenced in Article 11c of the EU Regulation on the European Electronic Health Record Exchange Format (EHRxF) from February 6, 2019. |
| Domain | Laboratory |
| Scope | National/Regional/Local |
| Context | There is a demand for online access to lab results both from healthcare providers and as part of patients’ electronic health records. Current solutions are primarily based on point-to-point communication between the laboratory and the healthcare provider’s information system. Providers typically do not have access to test results ordered by others. Furthermore, the demand for secondary use of lab results is growing. This use case is applicable regardless of the origin of the result report—whether from a lab or another system/repository (central, regional, or local EHR). |
| Information | Laboratory Result Report |
| Actors | • Patient • Healthcare Provider • Electronic Order Entry System • Laboratory Professional • Laboratory Information System |
| Preconditions | An authorized entity has submitted a test order or result report request to the laboratory or another result source. |
| Functional Process Description | The creation of a laboratory result report usually follows the laboratory order use case. The internal laboratory system (Automation Manager) records the test results into the laboratory application (Order Filler), which manages the orders. Here, results are consolidated into the relevant order or group of orders. The result report, compiled based on the laboratory test order and internal lab rules, is sent to the requester’s clinical system (called the Order Result Tracker). The Order Filler application also notifies both the Order Placer (clinical application generating the order) and the Order Result Tracker of any status changes for each order and its associated results. |
