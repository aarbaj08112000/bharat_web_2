<style>
    /* Privacy Policy Page Specific Styles */
    .privacy-content-wrapper {
        background: linear-gradient(180deg, #f8fafc 0%, #ffffff 100%);
        padding: 60px 0;
    }

    .privacy-section {
        background: white;
        border-radius: 20px;
        padding: 40px;
        margin-bottom: 30px;
        box-shadow: 0 10px 40px rgba(0, 0, 0, 0.06);
        border: 1px solid #e2e8f0;
        transition: all 0.3s ease;
        position: relative;
        overflow: hidden;
    }

    .privacy-section::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 5px;
        height: 100%;
        background: linear-gradient(180deg, #667eea 0%, #764ba2 100%);
    }

    .privacy-section:hover {
        transform: translateY(-5px);
        box-shadow: 0 15px 50px rgba(0, 0, 0, 0.1);
    }

    .privacy-section-header {
        display: flex;
        align-items: center;
        gap: 15px;
        margin-bottom: 25px;
        padding-bottom: 20px;
        border-bottom: 2px solid #f1f5f9;
    }

    .privacy-icon {
        width: 50px;
        height: 50px;
        background: linear-gradient(135deg, #667eea15, #764ba215);
        border-radius: 12px;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 24px;
        color: #667eea;
        flex-shrink: 0;
    }

    .privacy-section-title {
        font-size: 1.75rem;
        font-weight: 700;
        color: #1e293b;
        margin: 0;
    }

    .privacy-section-content {
        color: #475569;
        font-size: 1.05rem;
        line-height: 1.8;
    }

    .privacy-section-content p {
        margin-bottom: 15px;
    }

    .privacy-section-content ul {
        list-style: none;
        padding: 0;
        margin: 20px 0;
    }

    .privacy-section-content ul li {
        padding: 12px 0 12px 35px;
        position: relative;
        border-bottom: 1px solid #f1f5f9;
    }

    .privacy-section-content ul li:last-child {
        border-bottom: none;
    }

    .privacy-section-content ul li::before {
        content: '✓';
        position: absolute;
        left: 0;
        top: 12px;
        width: 24px;
        height: 24px;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: white;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 14px;
        font-weight: bold;
    }

    .privacy-contact-box {
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: white;
        padding: 40px;
        border-radius: 20px;
        text-align: center;
        margin-top: 40px;
        box-shadow: 0 20px 60px rgba(102, 126, 234, 0.3);
    }

    .privacy-contact-info {
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
        justify-content: center;
        margin-top: 25px;
    }

    .privacy-contact-item {
        display: flex;
        align-items: center;
        gap: 10px;
        background: rgba(255, 255, 255, 0.15);
        backdrop-filter: blur(10px);
        padding: 12px 24px;
        border-radius: 50px;
        border: 1px solid rgba(255, 255, 255, 0.2);
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .privacy-section {
            padding: 25px 20px;
        }
    }
</style>


<!-- Privacy Content -->
<div class="privacy-content-wrapper">
    <div class="container">
        <!-- Section 1: Introduction -->
        <div class="privacy-section" data-aos="fade-up">
            <div class="privacy-section-header">
                <div class="privacy-icon">
                    <i class="fas fa-info-circle"></i>
                </div>
                <h3 class="privacy-section-title">Introduction</h3>
            </div>
            <div class="privacy-section-content">
                <p>At Bharat ID Card (a division of Bharat ID Solution), we are committed to protecting the personal information of our clients and users. This Privacy Policy outlines how we collect, use, disclose, and safeguard your data when you use our services or website.</p>
                <p>By using our services, you consent to the data practices described in this policy. We ensure that all data processing is carried out in compliance with applicable information technology and data protection laws in India.</p>
            </div>
        </div>

        <!-- Section 2: Information We Collect -->
        <div class="privacy-section" data-aos="fade-up">
            <div class="privacy-section-header">
                <div class="privacy-icon">
                    <i class="fas fa-database"></i>
                </div>
                <h3 class="privacy-section-title">Information We Collect</h3>
            </div>
            <div class="privacy-section-content">
                <p>To provide our ID card printing and related services, we collect several types of information:</p>
                <ul>
                    <li><strong>Personal Identification:</strong> Name, photograph, designation, employee/student ID, and date of birth as required for card printing.</li>
                    <li><strong>Contact Information:</strong> Email address, phone number, and shipping address.</li>
                    <li><strong>Organization Details:</strong> Company/School name, logo, and authorization letters.</li>
                    <li><strong>Transactional Data:</strong> Details of orders placed and payment confirmations (we do not store full credit card details).</li>
                </ul>
            </div>
        </div>

        <!-- Section 3: How We Use Your Information -->
        <div class="privacy-section" data-aos="fade-up">
            <div class="privacy-section-header">
                <div class="privacy-icon">
                    <i class="fas fa-hand-holding-heart"></i>
                </div>
                <h3 class="privacy-section-title">How We Use Your Information</h3>
            </div>
            <div class="privacy-section-content">
                <p>We use the collected information for the following purposes:</p>
                <ul>
                    <li>To fulfill and manage your orders for ID cards and accessories.</li>
                    <li>To communicate with you regarding order status, queries, and company updates.</li>
                    <li>To improve our website functionality and user experience.</li>
                    <li>To comply with legal obligations and prevent fraudulent transactions.</li>
                    <li>To provide customer support and handle technical issues.</li>
                </ul>
            </div>
        </div>

        <!-- Section 4: Data Security -->
        <div class="privacy-section" data-aos="fade-up">
            <div class="privacy-section-header">
                <div class="privacy-icon">
                    <i class="fas fa-shield-alt"></i>
                </div>
                <h3 class="privacy-section-title">Data Security</h3>
            </div>
            <div class="privacy-section-content">
                <p>Bharat ID Card implements robust security measures to protect your data from unauthorized access, alteration, or destruction. We use encrypted connections (SSL) and secure servers to handle sensitive information.</p>
                <p>Access to your personal data is restricted to authorized personnel who need the information to perform their duties. We regularly review our security protocols to ensure the highest level of protection.</p>
            </div>
        </div>

        <!-- Section 5: Data Retention -->
        <div class="privacy-section" data-aos="fade-up">
            <div class="privacy-section-header">
                <div class="privacy-icon">
                    <i class="fas fa-clock"></i>
                </div>
                <h3 class="privacy-section-title">Data Retention</h3>
            </div>
            <div class="privacy-section-content">
                <p>We retain your personal information only for as long as necessary to fulfill the purposes outlined in this policy, including for legal, accounting, or reporting requirements.</p>
                <p>Printed data for ID cards is securely archived for a period to facilitate re-ordering, after which it is permanently deleted or anonymized unless otherwise requested by the client.</p>
            </div>
        </div>

        <!-- Section 6: Third-Party Sharing -->
        <div class="privacy-section" data-aos="fade-up">
            <div class="privacy-section-header">
                <div class="privacy-icon">
                    <i class="fas fa-share-alt"></i>
                </div>
                <h3 class="privacy-section-title">Third-Party Sharing</h3>
            </div>
            <div class="privacy-section-content">
                <p>We do not sell, rent, or trade your personal information. We may share data with trusted third-party service providers only to the extent necessary to provide our services:</p>
                <ul>
                    <li><strong>Logistics Partners:</strong> To deliver your orders to the specified address.</li>
                    <li><strong>Payment Gateways:</strong> To process secure transactions.</li>
                    <li><strong>Legal Requirement:</strong> If required by law or to protect the rights and safety of Bharat ID Card and its users.</li>
                </ul>
            </div>
        </div>

        <!-- Section 7: Your Rights -->
        <div class="privacy-section" data-aos="fade-up">
            <div class="privacy-section-header">
                <div class="privacy-icon">
                    <i class="fas fa-user-check"></i>
                </div>
                <h3 class="privacy-section-title">Your Rights</h3>
            </div>
            <div class="privacy-section-content">
                <p>As a user, you have the following rights regarding your personal data:</p>
                <ul>
                    <li>The right to access and receive a copy of your personal data.</li>
                    <li>The right to request correction of inaccurate information.</li>
                    <li>The right to request deletion of your data (subject to legal and contractual obligations).</li>
                    <li>The right to withdraw consent for marketing communications.</li>
                </ul>
            </div>
        </div>

        <!-- Contact Box -->
        <div class="privacy-contact-box" data-aos="zoom-in">
            <h3 style="font-size: 2rem; font-weight: 700; margin-bottom: 15px;">Privacy Inquiries?</h3>
            <p style="font-size: 1.1rem; opacity: 0.95; margin-bottom: 25px;">If you have any questions about this Privacy Policy, please contact us:</p>
            <div class="privacy-contact-info">
                <div class="privacy-contact-item">
                    <i class="fas fa-envelope"></i>
                    <span>bharatidcard.katni@gmail.com</span>
                </div>
                <div class="privacy-contact-item">
                    <i class="fas fa-phone"></i>
                    <span>+91 9806271078</span>
                </div>
                <div class="privacy-contact-item">
                    <i class="fas fa-map-marker-alt"></i>
                    <span>Katni, Madhya Pradesh</span>
                </div>
            </div>
        </div>
    </div>
</div>
