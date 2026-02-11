# Management Technical Knowledge Framework (MTKF)

## Summary

This TKF establishes the standard of technical competency required for a manager to act as an effective bridge between business objectives and technological execution. It is rooted in the transition from "digital literacy" to **"engineering judgment,"** enabling the autonomous assessment of risks, costs, and viability without total dependency on specialists.

## Guiding Principles

1. 
**Priority of Judgment over Syntax**: The focus is on understanding how and why systems work, gaining a high-level conceptual grasp of how they are coded.


2. 
**Architectural Vision**: The ability to view the entire system (End-to-End) and its underlying dependencies.


3. 
**Trade-off Evaluation**: Every technical decision involves a compromise between cost, time, quality, and scalability.


4. 
**Technological Agnosticism**: A focus on fundamental principles that transcend specific vendors or programming languages.



---

## 1. Technical Area: Artificial Intelligence (AI) and Machine Learning

To make informed decisions about AI, a manager must understand how data is "weighted" and how computation is optimized.

* 
**Execution Foundation**: Mastering the concepts of **Tensors and Embeddings**. It is not enough to know that AI "understands" text; one must understand that it converts text into mathematical vectors within an -dimensional space. This realization allows the manager to grasp why data quality (cleaning) is more critical than the model itself.


* 
**Authority Metric**: Shifting from asking "Does it work?" to asking "What is our error rate on the validation set vs. the test set?" or "How are we managing gradient drift?".



### 1.1. Technical Competency Map: AI and Intelligent Systems

| Level | AI Modeling & Logic | MLOps & Systems Infrastructure | Ethics, Risk, and ROI | Authority Criterion (The "Check") |
| --- | --- | --- | --- | --- |
| **Basic / Intermediate** | Distinguishes between Supervised, Unsupervised, and Reinforcement Learning. Masters concepts of Embeddings, Tokenization, and Context Windows. | Understands that models require GPUs/TPUs and the impact of compute on TCO. Oversees model/data versioning (DVC) and audits inference latency. | Identifies bias risks and the "AI Hierarchy of Needs". Evaluates hallucination risks and establishes technical content Guardrails. | Evaluates if a problem requires AI or if it is solvable via rule-based engineering. Validates if the AI solution is technically and financially viable. |
| --- | --- | --- | --- | --- |
| **Advanced / Expert** | Technical criteria to choose between RAG (context) and Fine-Tuning (specialization). Designs multimodal Generative AI systems. | Implements agentic architectures and model quantization. Leads the full MLOps stack and optimizes agent scalability. | Audits Technical ROI: Balance between inference cost, latency, and business value. Establishes corporate AI Governance.| Decides AI architecture by prioritizing data sovereignty and CI/CD integration. Defines the AI-First strategy. |

### 1.2. Fundamental Knowledge Tree

#### 1.2.1. Level 1: Data and Modeling Fundamentals (Basic)

* 
**SQL for AI**: Feature Engineering through complex queries.


* 
**Data Types**: Handling structured, unstructured, and semi-structured data for training.


* 
**Learning Paradigms**: Practical differentiation between Supervised, Unsupervised, and Reinforcement Learning.


* 
**Data Lifecycle**: Ingestion, cleaning, and preparation as the critical foundation.



#### 1.2.2. Level 2: Architecture and Orchestration (Intermediate)

* 
**LLM Concepts**: Management of Tokens, Context Windows, and hallucination mitigation.


* 
**Embeddings and Vectors**: Transforming concepts into mathematical vectors in Vector Databases.


* 
**Pipeline Orchestration**: Using Airflow or Dagster to automate data flows.


* 
**Initial MLOps**: Versioning models and data using tools like DVC.



#### 1.2.3. Level 3: AI Systems Engineering (Advanced)

* 
**Optimization Strategies**: Technical choice between RAG (Retrieval-Augmented Generation) vs. Fine-Tuning.


* 
**Inference and Deployment**: Optimization of Latency and orchestration with agents (e.g., LangChain/Haystack).


* 
**Governance and Security**: Implementation of "Guardrails" and privacy compliance (Data Residency).


* 
**System Monitoring**: Detecting Model Drift and Data Drift in production.



---

## 2. Technical Area: Data & Analytics

A manager with technical judgment demands a data architecture that does not collapse under load.

* 
**Execution Foundation**: Understanding Data Modeling (Dimensional vs. Relational). Knowing when an **ACID** database is required (for financial transactions) versus a **BASE** system (for massive scalability). This prevents the approval of technologies that could corrupt business integrity.


* 
**Authority Metric**: Identifying bottlenecks in pipeline latency. If data takes 4 hours to process, the manager must determine if the cause is the transformation logic (**Compute-bound**) or the network/storage (**I/O-bound**).



### 2.1. Technical Competency Map: Data Engineering & Systems

| Level | Modeling Logic & Structure | Pipeline Engineering & Flow | Systems Security & Governance | Authority Criterion (The "Check") |
| --- | --- | --- | --- | --- |
| **Basic** | Understands normalization (1NF to 3NF) and SQL vs. NoSQL. | Identifies ETL/ELT phases and Batch processing. | Familiar with encryption, masking, and Privacy-by-Design. | Detects if a structure compromises software integrity or scalability.  |
| --- | --- | --- | --- | --- |
| **Intermediate / Advanced** | Masters dimensional modeling and columnar storage (Parquet/Avro). Uses CAP Theorem to choose between Warehouse and Lakehouse. | Audits DAGs in Airflow/Dagster. Implements CDC (Change Data Capture) and Stream processing (Kafka/Flink). | Defines RBAC policies. Implements Data Lineage and observability for error traceability. | Identifies if a failure is Compute-bound (logic) or I/O-bound. Refutes non-scalable architectures.  |
| --- | --- | --- | --- | --- |
| **Expert** | Leads Data Mesh design. Masters distributed systems and eventual consistency. | Orchestrates multi-cloud architectures and optimizes storage costs. | Establishes data sovereignty and global compliance (GDPR/HIPAA). | Defines the **Data-as-a-Product** strategy.
 |

---

## 3. Technical Area: Software Engineering

To oversee engineering, a manager must understand architectural constraints and the actual lifecycle of the code.

* 
**Execution Foundation**: Understanding the **CAP Theorem** (Consistency, Availability, Partition Tolerance). A manager must know that you cannot have all three simultaneously in a distributed system. This underpins decisions on whether a system should be "always available" or "always accurate".


* 
**Authority Metric**: Evaluation of Cyclomatic Complexity, System Health, and Code Coverage. If test coverage is low, the manager must recognize they are accumulating a technical debt "time bomb".



### 3.1. Technical Competency Map: Software Engineering & Systems

| Level | Architecture & Systems Design | Lifecycle & DevOps (CI/CD) | Proactive Quality & Observability | Authority Criterion (The "Check") |
| --- | --- | --- | --- | --- |
| **Basic / Intermediate** | Distinguishes Monoliths from Microservices. Understands Async (Queues/Events) vs. Sync (REST/gRPC). | Familiar with Git flows and Docker. Manages CI/CD pipelines and IaC (Terraform). | Reads logs and differentiates between 400s and 500s errors. Audits test coverage and cyclomatic complexity. | Identifies if a team follows engineering standards or is generating technical debt. Challenges designs lacking retries or redundancy. |
| --- | --- | --- | --- | --- |
| **Advanced / Expert** | Designs for High Availability using resilience patterns (Circuit Breaker, Saga). Leads transitions to Serverless. | Implements progressive deployments (Blue-Green/Canary) and K8s. Optimizes Cloud TCO. | Establishes SLOs/SLIs. Uses advanced telemetry (Traces/Metrics). Establishes a blameless Post-mortem culture. | Decides when to pause the roadmap for stability. Acts as final authority during crises. |

---

## 4. Integration and Synergy Matrix

A manager must perceive how these areas converge:

### 4.1. Software Engineering + AI: The Operational Intelligence Layer

* 
**CI/CD Integration**: Automating model deployment and validation (Model A/B Testing).


* 
**Resilience Patterns**: Implementing Circuit Breakers or fallbacks if AI models fail or time out.


* 
**AI Observability**: Monitoring AI inference latency with the same rigor as microservices.



### 4.2. Data Engineering + AI: The Learning Ecosystem

* 
**Training Support**: Architecture (Lakehouse/Stream Processing) allowing for re-training or RAG without saturating systems.


* 
**Lineage and Integrity**: Tracing data points to specific AI predictions to audit for bias.


* 
**Ingestion Data Quality**: Validation filters in pipelines to prevent "garbage data" from reaching models.



### 4.3. Software Engineering + Data Engineering: The System Backbone

* 
**Proportional Scalability**: Ensuring data API and persistence layers scale elastically with application traffic.


* 
**Synchronization and Consistency**: Managing data duplication in microservices to avoid inconsistencies with the warehouse.


* 
**Integral Security**: Applying the same security policies and secret management (IaC) to both domains.



---

## 5. Implementable Management Tools

### 5.1. Technical Debt Radar (TDR)

| Risk Category | Status (R/A/G) | Business Impact | Required Action |
| --- | --- | --- | --- |
| **Obsolescence** | Red | Security risk due to deprecated library versions. | Immediate migration plan. |
| **Lack of Testing** | Yellow | Increase bugs with every new deployment. | Freeze features; raise coverage to 80%. |
| **Documentation** | Red | Total dependency on specific individuals. | Mandatory architecture docs this week. |
| **Infrastructure** | Green | Optimized costs and fluid scalability. | Maintain preventive monitoring. |

### 5.2. Post-Mortem Close Incident - Executive View

| Evaluation Criterion | Technical Team Response | Manager Validation (Authority Check) |
| --- | --- | --- |
| **Root Cause** | Explanation of technical failure. | Was the systemic "Why" identified or just the symptom?. |
| **Reversibility** | How long did the Rollback take?. | Could the change be undone in under 5 minutes?. |
| **Detection** | How did we find out?. | Was observability proactive or reactive?. |
| **Cost of Failure** | Impact estimation. | Was prevention cost lower than current impact?. |

---

## 6. Validation Milestone: "End-to-End AI Project"

Ultimate milestone to validate knowledge:

* 
**The Problem**: Identify a real-world internal or client-facing problem.


* 
**The Solution**: Technically justify tool selection across Software, Data, and AI.


* 
**Evaluation Criteria**: Trade-off analysis (e.g., RAG vs. Fine-tuning) and holistic design.



---

## Referencias

* 
**Fowler, M. (2019).** Refactoring: Improving the Design of Existing Code (2nd ed.). Addison-Wesley Professional.

* 
**Kleppmann, M. (2017).** Designing Data-Intensive Applications: The Big Ideas Behind Reliable, Scalable, and Maintainable Systems. O'Reilly Media.

* 
**Ng, A. (2018).** Machine Learning Yearning. DeepLearning.AI.

* 
**Project Management Institute. (2021).** A Guide to the Project Management Body of Knowledge (PMBOK® Guide) – Seventh Edition.

* 
**Reis, J., & Housley, M. (2022).** Fundamentals of Data Engineering: Plan and Build Robust Data Systems. O'Reilly Media.

* 
**Sutton, R. S., & Barto, A. G. (2015).** Reinforcement Learning: An Introduction. MIT Press.

* 
**Beyer, B., Jones, C., Petoff, J., & Murphy, N. R. (2016).** Site Reliability Engineering: How Google Runs Production Systems. O'Reilly Media.

* 
**Forsgren, N., Humble, J., & Kim, G. (2018).** Accelerate: The Science of Lean Software and DevOps: Building and Scaling High Performing Technology Organizations. IT Revolution Press.

* 
**Kim, G., Behr, K., & Spafford, G. (2013).** The Phoenix Project: A Novel about IT, DevOps, and Helping Your Business Win. IT Revolution Press.

* 
**Benaich, N., & Hogarth, I. (2025).** State of AI Report 2025. Air Street Capital.

**Additional Blogs**

* 
**Andreesen, M., & Horowitz, B. (s.f.).** AI Section. a16z Blog. a16z.com/ai

* 
**Orosz, G. (s.f.).** The Pragmatic Engineer pragmaticengineer.com 

* 
**Thompson, B. (s.f.).** Stratechery. stratechery.com
