# Management Technical Knowledge Framework (MTKF)

## Summary

This TKF establishes the standard of technical competency required for a manager to act as an effective bridge between business objectives and technological execution. It is rooted in the transition from "digital literacy" to "engineering judgment," enabling the autonomous assessment of risks, costs, and viability without total dependency on specialists.

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
**Execution Foundation**: Mastering the concepts of Tensors and Embeddings. It is not enough to know that AI "understands" text; one must understand that it converts text into mathematical vectors within an N-dimensional space. This realization allows the manager to grasp why data quality (cleaning) is more critical than the model itself.


* 
**Authority Metric**: Shifting from asking "Does it work?" to asking "What is our error rate on the validation set vs. the test set?" or "How are we managing gradient drift?".



### 1.1. Technical Competency Map: AI and Intelligent Systems

| Level | AI Modeling & Logic | MLOps & Systems Infrastructure | Ethics, Risk, and ROI | Authority Criterion (The "Check") |
| --- | --- | --- | --- | --- |
| **Basic / Intermediate** | Distinguishes between Supervised, Unsupervised, and Reinforcement Learning. Master concepts of Embeddings, Tokenization, and Context Windows.

 | Understands that models require GPUs/TPUs and the impact of compute on TCO. Oversees model/data versioning (DVC) and audits inference latency.

 | Identifies bias risks and the "AI Hierarchy of Needs" (Data before models). Evaluates hallucination risks and establishes technical content Guardrails.

 | Evaluates if a problem requires AI or if it is solvable via rule-based engineering. Validates if the AI solution is technically and financially viable compared to statistical methods.

 |
| **Advanced / Expert** | Technical criteria to choose between RAG (context) and Fine-Tuning (specialization). Designs multimodal Generative AI systems and hyperparameter optimization.

 | Implements agentic architectures and model quantization to optimize systems. Lead the full MLOps stack. Optimizes "Cold Start" and agent scalability.

 | Audits Technical ROI: Balance between inference cost, latency, and business value. Establishes corporate AI Governance frameworks and advanced ethical/legal compliance.

 | Decides AI architecture by prioritizing data sovereignty and CI/CD integration. Defines the AI-First strategy, ensuring that AI is a resilient component of the ecosystem.

 |

### 1.2. Fundamental Knowledge Tree

#### 1.2.1. Level 1: Data and Modeling Fundamentals (Basic)

* 
**SQL for AI**: Feature Engineering through complex queries.


* 
**Data Types**: Handling structured, unstructured, and semi-structured data for training.


* 
**Learning Paradigms**: Practical differentiation between Supervised, Unsupervised, and Reinforcement Learning.


* 
**Data Lifecycle**: Ingestion, cleaning, and preparation as the critical foundation of AI.



#### 1.2.2. Level 2: Architecture and Orchestration (Intermediate)

* 
**LLM Concepts**: Management of Tokens, Context Windows, and hallucination mitigation.


* 
**Embeddings and Vectors**: Transforming concepts into mathematical vectors and storing them in Vector Databases.


* 
**Pipeline Orchestration**: Using Airflow or Dagster to automate data flows to models.


* 
**Initial MLOps**: Versioning models and data using tools like DVC (Data Version Control).



#### 1.2.3. Level 3: AI Systems Engineering (Advanced)

* 
**Optimization Strategies**: Technical choice between RAG (Retrieval-Augmented Generation) for dynamic context vs. Fine-Tuning for specialization.


* 
**Inference and Deployment**: Optimization of Inference Latency, model quantization, and orchestration with agents (e.g., LangChain/Haystack).


* 
**Governance and Security**: Implementation of "Guardrails," prompt injection mitigation, and privacy compliance (Data Residency).


* 
**System Monitoring**: Detecting Model Drift and Data Drift in production environments.



---

## 2. Technical Area: Data & Analytics

A manager with technical judgment does not simply ask for a "dashboard"; they demand a data architecture that does not collapse under load.

* 
**Execution Foundation**: Understanding Data Modeling (Dimensional vs. Relational). A manager must know when an ACID database is required versus a BASE system. This knowledge prevents the approval of technologies that could corrupt business integrity.


* 
**Authority Metric**: Identifying bottlenecks in pipeline latency. If data takes 4 hours to process, the manager must determine if the cause is the transformation logic (Compute-bound) or the network/storage (I/O-bound).



### 2.1. Technical Competency Map: Data Engineering & Systems

| Level | Modeling Logic & Structure | Pipeline Engineering & Flow | Systems Security & Governance | Authority Criterion (The "Check") |
| --- | --- | --- | --- | --- |
| **Basic** | Understands normalization (1NF to 3NF) and the difference between SQL and NoSQL.

 | Identifies ETL/ELT phases and Batch processing concepts.

 | Familiar with encryption, masking, and Privacy-by-Design principles.

 | Detects if a data structure compromises software integrity or scalability.

 |
| **Intermediate / Advanced** | Masters dimensional modeling and columnar storage (Parquet/Avro). Chooses between Warehouse and Lakehouse based on the CAP Theorem and consistency needs.

 | Audits DAGs in Airflow/Dagster. Manages retries and engineering dependencies. Implements CDC (Change Data Capture) and Stream processing (Kafka/Flink).

 | Defines RBAC policies and audits access logs and platform security. Implements Data Lineage and observability for error traceability.

 | Identifies if a failure is Compute-bound (logic) or I/O-bound (infra/network). Refutes architectures that do not support horizontal scaling or real-time AI training.

 |
| **Expert** | Leads Data Mesh design. Masters distributed systems and eventual consistency.

 | Orchestrates multi-cloud architectures and optimizes tiered storage costs.

 | Establishes data sovereignty and global compliance (GDPR/HIPAA) at the systems level.

 | Defines the Data-as-a-Product strategy, ensuring data is ready for AI and software consumption.

 |

### 2.2. Knowledge Tree

#### 2.2.1. Level 1: Structure and Query Fundamentals (Basic)

* 
**Advanced SQL**: Mastery of Window Functions and CTEs for complex data analysis.


* 
**Data Modeling**: Differentiation between Star Schema and Snowflake Schema.


* 
**Normalization & Types**: Understanding 1NF through 3NF and the difference between Relational (Postgres) and NoSQL (Mongo/Cassandra).


* 
**Lifecycle**: Identification of ETL phases and Batch Processing concepts.



#### 2.2.2. Level 2: Orchestration and Real-Time Flows (Intermediate)

* 
**Systems Orchestration**: Auditing flows in Airflow or Dagster, including retry handling and dependency management.


* 
**Replication Engineering**: Implementation of Change Data Capture (CDC) for real-time synchronization.


* 
**Efficient Storage**: Understanding columnar storage (Parquet/Avro) for massive query optimization.


* 
**Systems Diagnosis**: Ability to identify if a delay is Compute-bound or I/O-bound.



#### 2.2.3. Level 3: Distributed Architecture and Governance (Advanced)

* 
**High Availability Systems**: Choosing between Data Warehouse and Data Lakehouse based on eventual consistency and the CAP Theorem.


* 
**Data Security**: Implementation of encryption at rest and in transit, alongside granular access control (RBAC).


* 
**Lineage and Quality**: Using Data Lineage to track the origin of failures and ensure data observability.


* 
**Platform Governance**: Designing Data Mesh architectures and ensuring global regulatory compliance.



---

## 3. Technical Area: Software Engineering

To oversee engineering, a manager must understand architectural constraints and the actual lifecycle of the code.

* 
**Execution Foundation**: Understanding the CAP Theorem (Consistency, Availability, Partition Tolerance). A manager must know that you cannot have all three simultaneously in a distributed system. This underpins decisions on whether a system should be "always available" or "always accurate".


* 
**Authority Metric**: Evaluation of Cyclomatic Complexity, System Health, and Code Coverage. If test coverage is low, the manager must recognize they are accumulating a technical debt "time bomb".



### 3.1. Technical Competency Map: Software Engineering & Systems

| Level | Architecture & Systems Design | Lifecycle & DevOps (CI/CD) | Proactive Quality & Observability | Authority Criterion (The "Check") |
| --- | --- | --- | --- | --- |
| **Basic / Intermediate** | Distinguishes Monoliths from Microservices. Understands Asynchronous (Queues/Events) vs. Synchronous (REST/gRPC) communication.

 | Familiar with Git flows and containers (Docker). Manages CI/CD pipelines and Infrastructure as Code (Terraform).

 | Reads logs and differentiates between 400s and 500s errors. Audits test coverage and cyclomatic complexity.

 | Identifies if a team follows engineering standards or is generating technical debt. Challenges designs that lack exception handling, retries, or redundancy.

 |
| **Advanced / Expert** | Designs for High Availability. Applies resilience patterns (Circuit Breaker, Saga). Leads transformations to Event-Driven Architectures and Serverless.

 | Implements progressive deployments (Blue-Green/Canary) and masters orchestration (K8s). Optimizes Cloud TCO through efficient architecture.

 | Establishes SLOs/SLIs. Uses advanced telemetry (Traces/Metrics) to prevent outages. Establishes a culture of blameless Post-mortems.

 | Decides when to pause the commercial roadmap to prioritize system stability. Acts as the final authority during crises.

 |

### 3.2. Knowledge Tree

#### 3.2.1. Level 1: Engineering Fundamentals (Basic)

* 
**Design Patterns**: Singleton, Factory, Observer, and impact on maintainability.


* 
**Asynchronous Programming**: Handling threads, promises, and concurrency.


* 
**Networking Fundamentals**: Protocols (HTTP/S, TCP/IP), DNS, and load balancing.


* 
**Advanced Versioning**: Branching strategies (Trunk-based development) and Pull Request policies.



#### 3.2.2. Level 2: Architecture and Resilience (Intermediate)

* 
**Stability Patterns**: Circuit Breakers, Retries, and Bulkheads to avoid cascading failures.


* 
**Infrastructure as Code (IaC)**: Concepts of Terraform or CloudFormation.


* 
**Caching Strategies**: Implementation of Redis/Memcached and invalidation policies.


* 
**System-to-System Communication**: Service Mesh (Istio), message queues (RabbitMQ/Kafka), and APIs (REST vs. gRPC).



#### 3.2.3. Level 3: Platform Engineering and Operations (Advanced)

* 
**Distributed Architectures**: Microservices vs. Modular Monolith and state management.


* 
**Total Observability**: Implementing the three pillars (Logs, Metrics, Traces) and managing SLIs/SLOs.


* 
**Systems Security**: DevSecOps, secret management, and vulnerability scanning.


* 
**CAP Theorem**: Strategic decision-making between Consistency, Availability, and Partition Tolerance.



---

## 4. Integration and Synergy Matrix

A manager must perceive how these areas converge:

### 4.1. Software Engineering + Artificial Intelligence: The Operational Intelligence Layer

It is about integrating AI resiliently into the system's lifecycle.

* 
**CI/CD Integration**: Automating model deployment and validation (Model A/B Testing).


* 
**Resilience Patterns**: Implementing Circuit Breakers or fallbacks if AI models fail or time out.


* 
**AI Observability**: Monitoring AI inference latency with the same rigor as microservices.



### 4.2. Data Engineering + Artificial Intelligence: The Learning Ecosystem

The model is a direct reflection of the data infrastructure feeding it.

* 
**Training Support**: Architecture (Lakehouse/Stream Processing) allowing for re-training or RAG without saturating systems.


* 
**Lineage and Integrity**: Tracing data points to specific AI predictions to audit for bias.


* 
**Ingestion Data Quality**: Validation filters in pipelines to prevent "garbage data" from reaching models.



### 4.3. Software Engineering + Data Engineering: The System Backbone

The infrastructure that allows information to flow toward users and services.

* 
**Proportional Scalability**: Ensuring data API and persistence layers scale elastically with application traffic.


* 
**Synchronization and Consistency**: Managing data duplication in microservices to avoid inconsistencies with the warehouse.


* 
**Integral Security**: Applying the same security policies and secret management (IaC) to both domains.



### 4.4. Final "Engineering Judgment" Check for Managers

"If we update our data schema tomorrow, will it break our AI's inference, and does our Software CI/CD pipeline have the observability to catch it before the user does?".

---

## 5. Implementable Management Tools

### 5.1. Technical Audit Guide: "The Drill-Down Questions"

Use these to expose structural weaknesses.

#### 5.1.1. In Architecture Reviews (Software & Cloud)

* 
**Coupling**: "If we shut down service X, which parts of system Y stop working?".


* 
**Scalability**: "What is our breaking point, and which resource (CPU, Memory, I/O) will be exhausted first?".


* 
**Security**: "How are we managing secrets in the code?".



#### 5.1.2. In Data & AI Projects

* 
**Quality**: "What percentage of our input data is null, and how does that affect results?".


* 
**On AI/GenAI**: "How are we mitigating prompt injection risks?".


* 
**Storage**: "Why did we choose this specific database engine? Is it optimized for reading or writing?".



### 5.2. Technical Debt Radar (TDR)

A visual tool to quantify risk.

| Risk Category | Status (R/A/G) | Business Impact | Required Action |
| --- | --- | --- | --- |
| Obsolescence | Red | Security risk due to deprecated library versions.

 | Immediate migration plan.

 |
| Lack of Testing | Yellow | Increase bugs with every new deployment.

 | Freeze features; raise coverage to 80%.

 |
| Documentation | Red | Total dependency on specific individuals (Key person risk).

 | Mandatory architecture docs this week.

 |
| Infrastructure | Green | Optimized costs and fluid scalability.

 | Maintain preventive monitoring.

 |

### 5.3. Estimation Validation Protocol (The Reality Check)

Use the 3-Layer Estimation Method to audit a schedule:

1. 
**Integration Layer**: Pure development vs. integration with external systems.


2. 
**Testing/QA Layer**: Including bug-fixing time, not just the "Happy Path".


3. 
**Deployment Layer**: Adding a 20% buffer if deployment is manual.



### 5.4. Post-Mortem Audit Sheets

#### 5.4.1. AI Incident Audit

* Identify failure (hallucination, bias, or infra).


* Vector distance between production data and training set.


* Validation of Guardrails and inference efficiency.



#### 5.4.2. Data & Analytics Incident Audit

* Identify the failing DAG node (Ingest, Transform, or Load).


* Determine if failure was Compute-bound or I/O-bound.


* Check for ACID violations or RBAC failures.



#### 5.4.3. Software Development Incident Audit

* Identify if failure was a specific microservice or cascading.


* Check if Circuit Breaker triggered.


* Audit observability gaps and deployment governance.



### 5.5. Post-Mortem Close Incident - Executive View

| Evaluation Criterion | Technical Team Response | Manager Validation (Authority Check) |
| --- | --- | --- |
| Root Cause | Explanation of technical failure.

 | Was the systemic "Why" identified?.

 |
| Reversibility | How long did the Rollback take?.

 | Could it be undone in under 5 minutes?.

 |
| Detection | How did we find out?.

 | Was observability proactive or reactive?.

 |
| Cost of Failure | Impact estimation.

 | Was prevention cost lower than impact?.

 |

### 5.6. Efficiency Matrix: "The Decision Filter"

| Filter | Control Question | If the answer is NO... |
| --- | --- | --- |
| Reversibility | Can we undo this in under 5 mins if it fails?.

 | Demand a documented Rollback plan.

 |
| Observability | Will we see the failure before the client calls?.

 | The ticket is not "Done".

 |
| Cost-Benefit | Is compute/storage cost proportional to value?.

 | Request data architecture optimization.

 |

### 5.7. Implementation Suggestions

* 
**The Daily Sync**: Use one random audit question each week.


* 
**The Steering Committee**: Present the Technical Debt Radar to justify infrastructure investment.


* 
**Quarterly Planning**: Use the Reality Check Protocol for realistic dates.



---

## 6. Validation Milestone: "End-to-End AI Project"

Ultimate milestone to validate knowledge.

* 
**The Problem**: Identify a real-world internal or client-facing problem.


* 
**The Solution**: Technically justify tool selection across all three domains.


* 
**Evaluation Criteria**: Trade-off analysis (e.g., RAG vs. Fine-tuning) and holistic design.



---

## Referencias

* Fowler, M. (2019). *Refactoring: Improving the Design of Existing Code*.


* Kleppmann, M. (2017). *Designing Data-Intensive Applications*.


* Ng, A. (2018). *Machine Learning Yearning*.


* PMI. (2021). *PMBOK® Guide* - Seventh Edition.


* Reis, J., & Housley, M. (2022). *Fundamentals of Data Engineering*.


* Sutton, R. S., & Barto, A. G. (2015). *Reinforcement Learning: An Introduction*.


* Beyer, B., et al. (2016). *Site Reliability Engineering*.


* Forsgren, N., et al. (2018). *Accelerate*.


* Kim, G., et al. (2013). *The Phoenix Project*.


* Benaich, N., & Hogarth, I. (2025). *State of AI Report 2025*.


* Blogs: a16z AI Section, The Pragmatic Engineer, Stratechery.