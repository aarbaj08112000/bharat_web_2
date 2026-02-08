<style>
    /* Terms & Conditions Page Specific Styles */
    .tnc-hero {
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        padding: 60px 0 40px;
        position: relative;
        overflow: hidden;
    }

    .tnc-hero::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: url('data:image/svg+xml,<svg width="100" height="100" xmlns="http://www.w3.org/2000/svg"><defs><pattern id="grid" width="100" height="100" patternUnits="userSpaceOnUse"><path d="M 100 0 L 0 0 0 100" fill="none" stroke="rgba(255,255,255,0.05)" stroke-width="1"/></pattern></defs><rect width="100" height="100" fill="url(%23grid)"/></svg>');
        opacity: 0.3;
    }

    .tnc-header-content {
        position: relative;
        z-index: 10;
        text-align: center;
        color: white;
    }

    .tnc-title {
        font-size: 3rem;
        font-weight: 800;
        margin-bottom: 15px;
        text-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
    }

    .tnc-subtitle {
        font-size: 1.1rem;
        opacity: 0.95;
        margin-bottom: 10px;
    }

    .tnc-meta {
        display: inline-block;
        background: rgba(255, 255, 255, 0.15);
        backdrop-filter: blur(10px);
        padding: 15px 30px;
        border-radius: 50px;
        margin-top: 20px;
        border: 1px solid rgba(255, 255, 255, 0.2);
    }

    .tnc-content-wrapper {
        background: linear-gradient(180deg, #f8fafc 0%, #ffffff 100%);
        padding: 60px 0;
    }

    .tnc-section {
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

    .tnc-section::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 5px;
        height: 100%;
        background: linear-gradient(180deg, #667eea 0%, #764ba2 100%);
    }

    .tnc-section:hover {
        transform: translateY(-5px);
        box-shadow: 0 15px 50px rgba(0, 0, 0, 0.1);
    }

    .tnc-section-header {
        display: flex;
        align-items: center;
        gap: 15px;
        margin-bottom: 25px;
        padding-bottom: 20px;
        border-bottom: 2px solid #f1f5f9;
    }

    .tnc-icon {
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

    .tnc-section-title {
        font-size: 1.75rem;
        font-weight: 700;
        color: #1e293b;
        margin: 0;
    }

    .tnc-section-content {
        color: #475569;
        font-size: 1.05rem;
        line-height: 1.8;
    }

    .tnc-section-content p {
        margin-bottom: 15px;
    }

    .tnc-section-content ul {
        list-style: none;
        padding: 0;
        margin: 20px 0;
    }

    .tnc-section-content ul li {
        padding: 12px 0 12px 35px;
        position: relative;
        border-bottom: 1px solid #f1f5f9;
    }

    .tnc-section-content ul li:last-child {
        border-bottom: none;
    }

    .tnc-section-content ul li::before {
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

    .tnc-highlight {
        background: linear-gradient(135deg, #667eea10, #764ba210);
        padding: 20px 25px;
        border-radius: 12px;
        border-left: 4px solid #667eea;
        margin: 20px 0;
    }

    .tnc-contact-box {
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: white;
        padding: 40px;
        border-radius: 20px;
        text-align: center;
        margin-top: 40px;
        box-shadow: 0 20px 60px rgba(102, 126, 234, 0.3);
    }

    .tnc-contact-box h3 {
        font-size: 2rem;
        font-weight: 700;
        margin-bottom: 15px;
    }

    .tnc-contact-box p {
        font-size: 1.1rem;
        opacity: 0.95;
        margin-bottom: 25px;
    }

    .tnc-contact-info {
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
        justify-content: center;
        margin-top: 25px;
    }

    .tnc-contact-item {
        display: flex;
        align-items: center;
        gap: 10px;
        background: rgba(255, 255, 255, 0.15);
        backdrop-filter: blur(10px);
        padding: 12px 24px;
        border-radius: 50px;
        border: 1px solid rgba(255, 255, 255, 0.2);
    }

    .tnc-contact-item i {
        font-size: 18px;
    }

    .company-info-card {
        background: white;
        border-radius: 20px;
        padding: 35px;
        margin-bottom: 40px;
        box-shadow: 0 10px 40px rgba(0, 0, 0, 0.08);
        border: 2px solid #667eea30;
    }

    .company-info-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
        gap: 20px;
        margin-top: 20px;
    }

    .info-item {
        display: flex;
        align-items: flex-start;
        gap: 12px;
    }

    .info-item i {
        color: #667eea;
        font-size: 20px;
        margin-top: 3px;
    }

    .info-item-content strong {
        display: block;
        color: #1e293b;
        font-weight: 600;
        margin-bottom: 5px;
    }

    .info-item-content span {
        color: #64748b;
        font-size: 0.95rem;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .tnc-title {
            font-size: 2rem;
        }

        .tnc-section {
            padding: 25px 20px;
        }

        .tnc-section-title {
            font-size: 1.4rem;
        }

        .tnc-section-content {
            font-size: 1rem;
        }

        .company-info-grid {
            grid-template-columns: 1fr;
        }
    }

    /* Scroll Animation */
    @keyframes fadeInUp {
        from {
            opacity: 0;
            transform: translateY(30px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    .animate-fade-in {
        animation: fadeInUp 0.6s ease-out;
    }
</style>



<!-- TNC Content -->
<div class="tnc-content-wrapper">
    <div class="container">
        <!-- Company Information -->
        <div class="company-info-card" data-aos="fade-up">
            <h2 style="color: #1e293b; font-size: 1.8rem; font-weight: 700; margin-bottom: 20px;">
                <i class="fas fa-building" style="color: #667eea; margin-right: 10px;"></i>
                Company Information
            </h2>
            <div class="company-info-grid">
                <div class="info-item">
                    <i class="fas fa-id-card"></i>
                    <div class="info-item-content">
                        <strong>Entity Name</strong>
                        <span>Bharat ID Solution</span>
                    </div>
                </div>
                <div class="info-item">
                    <i class="fas fa-map-marker-alt"></i>
                    <div class="info-item-content">
                        <strong>Registered Address</strong>
                        <span>Katni, Madhya Pradesh, India</span>
                    </div>
                </div>
                <div class="info-item">
                    <i class="fas fa-phone"></i>
                    <div class="info-item-content">
                        <strong>Contact Number</strong>
                        <span>+91 9806271078</span>
                    </div>
                </div>
                <div class="info-item">
                    <i class="fas fa-envelope"></i>
                    <div class="info-item-content">
                        <strong>Email Address</strong>
                        <span>bharatidcard.katni@gmail.com</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- Section 1: Scope of Services -->
        <div class="tnc-section" data-aos="fade-up">
            <div class="tnc-section-header">
                <div class="tnc-icon">
                    <i class="fas fa-briefcase"></i>
                </div>
                <h3 class="tnc-section-title">Scope of Services</h3>
            </div>
            <div class="tnc-section-content">
                <p>Bharat ID Solution offers customized printing solutions for PVC ID cards, lanyards, accessories, and corporate identification tools. All services are tailored to client requirements and designed to meet the highest standards of quality and security.</p>
                <ul>
                    <li>Premium PVC ID card printing with advanced security features</li>
                    <li>Custom lanyards in various sizes (12mm, 16mm, 20mm)</li>
                    <li>RFID and smart card solutions for automated systems</li>
                    <li>Corporate branding and identification accessories</li>
                    <li>Bulk order processing for institutions and organizations</li>
                </ul>
            </div>
        </div>

        <!-- Section 2: Order Processing -->
        <div class="tnc-section" data-aos="fade-up">
            <div class="tnc-section-header">
                <div class="tnc-icon">
                    <i class="fas fa-cogs"></i>
                </div>
                <h3 class="tnc-section-title">Order Processing</h3>
            </div>
            <div class="tnc-section-content">
                <p>Orders are manufactured upon confirmation and require finalized design files. Dispatch is typically within 24-48 hours, subject to availability and design approval.</p>
                <div class="tnc-highlight">
                    <strong><i class="fas fa-info-circle"></i> Important:</strong> Customers must provide accurate and verified information for printing on ID cards. Any errors in customer-provided data are the customer's responsibility.
                </div>
                <ul>
                    <li>Order confirmation required before production begins</li>
                    <li>Design files must be finalized and approved by customer</li>
                    <li>Estimated delivery date provided during order confirmation</li>
                    <li>Turnaround time may vary depending on order volume</li>
                    <li>Rush orders available upon request with additional charges</li>
                </ul>
            </div>
        </div>

        <!-- Section 3: Pricing and Payments -->
        <div class="tnc-section" data-aos="fade-up">
            <div class="tnc-section-header">
                <div class="tnc-icon">
                    <i class="fas fa-rupee-sign"></i>
                </div>
                <h3 class="tnc-section-title">Pricing and Payments</h3>
            </div>
            <div class="tnc-section-content">
                <p>All prices are listed in INR and may change without prior notice. Full payment is required unless otherwise agreed in writing.</p>
                <ul>
                    <li>Accepted payment methods: UPI, credit/debit cards, net banking, and digital wallets</li>
                    <li>Advance payment required for bulk orders</li>
                    <li>Payment confirmation required before order processing</li>
                    <li>GST applicable as per government regulations</li>
                    <li>Invoice provided for all transactions</li>
                </ul>
            </div>
        </div>

        <!-- Section 4: Shipping and Delivery -->
        <div class="tnc-section" data-aos="fade-up">
            <div class="tnc-section-header">
                <div class="tnc-icon">
                    <i class="fas fa-shipping-fast"></i>
                </div>
                <h3 class="tnc-section-title">Shipping and Delivery</h3>
            </div>
            <div class="tnc-section-content">
                <p>Pan-India shipping via trusted logistics partners. Bharat ID Solution shares tracking details post-dispatch but does not guarantee delivery timelines due to external factors.</p>
                <ul>
                    <li>Tracking information provided after dispatch</li>
                    <li>Delivery timelines depend on courier partner and location</li>
                    <li>Local pickup available at our Katni office</li>
                    <li>Shipping charges calculated based on order weight and destination</li>
                    <li>Free shipping available on orders above specified amount</li>
                </ul>
            </div>
        </div>

        <!-- Section 5: Returns, Replacements, and Refunds -->
        <div class="tnc-section" data-aos="fade-up">
            <div class="tnc-section-header">
                <div class="tnc-icon">
                    <i class="fas fa-undo-alt"></i>
                </div>
                <h3 class="tnc-section-title">Returns, Replacements, and Refunds</h3>
            </div>
            <div class="tnc-section-content">
                <p>Refunds offered for manufacturing defects or damages during transit. Claims must be submitted within 24 hours with visual proof.</p>
                <div class="tnc-highlight">
                    <strong><i class="fas fa-exclamation-triangle"></i> Note:</strong> Once ID cards are printed, no changes or refunds will be entertained unless there is a printing error on our part.
                </div>
                <ul>
                    <li>Manufacturing defects covered under replacement policy</li>
                    <li>Transit damage claims require photo/video evidence</li>
                    <li>Claims must be submitted within 24 hours of delivery</li>
                    <li>Cancellations allowed only within 1 hour of placing order</li>
                    <li>No refunds for customer-provided incorrect information</li>
                    <li>Replacement processing time: 3-5 business days</li>
                </ul>
            </div>
        </div>

        <!-- Section 6: Design and Content Responsibility -->
        <div class="tnc-section" data-aos="fade-up">
            <div class="tnc-section-header">
                <div class="tnc-icon">
                    <i class="fas fa-paint-brush"></i>
                </div>
                <h3 class="tnc-section-title">Design and Content Responsibility</h3>
            </div>
            <div class="tnc-section-content">
                <p>Customers must hold proper rights to submitted designs. Bharat ID Solution reserves the right to reject designs that violate laws or ethics.</p>
                <ul>
                    <li>Customer approval of final design proofs is mandatory</li>
                    <li>All designs and layouts are intellectual property of Bharat ID Solution</li>
                    <li>Customers must own rights to logos, images, and content submitted</li>
                    <li>Designs violating copyright, trademark, or ethical standards will be rejected</li>
                    <li>Design assistance available upon request</li>
                    <li>Final proof approval required before production</li>
                </ul>
            </div>
        </div>

        <!-- Section 7: Intellectual Property -->
        <div class="tnc-section" data-aos="fade-up">
            <div class="tnc-section-header">
                <div class="tnc-icon">
                    <i class="fas fa-copyright"></i>
                </div>
                <h3 class="tnc-section-title">Intellectual Property</h3>
            </div>
            <div class="tnc-section-content">
                <p>All designs, templates, and materials on the website belong to Bharat ID Solution. Unauthorized use or reproduction is strictly prohibited.</p>
                <ul>
                    <li>Website content protected by copyright laws</li>
                    <li>Design templates are proprietary to Bharat ID Solution</li>
                    <li>Unauthorized reproduction or distribution prohibited</li>
                    <li>Customer designs remain customer property after payment</li>
                    <li>Legal action may be taken against intellectual property violations</li>
                </ul>
            </div>
        </div>

        <!-- Section 8: Limitation of Liability -->
        <div class="tnc-section" data-aos="fade-up">
            <div class="tnc-section-header">
                <div class="tnc-icon">
                    <i class="fas fa-shield-alt"></i>
                </div>
                <h3 class="tnc-section-title">Limitation of Liability</h3>
            </div>
            <div class="tnc-section-content">
                <p>Bharat ID Solution shall not be liable for indirect losses, courier delays, or design errors originating from user submissions. Liability is limited to the transaction value in question.</p>
                <ul>
                    <li>Not liable for courier delays beyond our control</li>
                    <li>Not responsible for errors in customer-provided data</li>
                    <li>Maximum liability limited to order value</li>
                    <li>No liability for consequential or indirect damages</li>
                    <li>Force majeure events exempt from liability</li>
                </ul>
            </div>
        </div>

        <!-- Section 9: Customer Support -->
        <div class="tnc-section" data-aos="fade-up">
            <div class="tnc-section-header">
                <div class="tnc-icon">
                    <i class="fas fa-headset"></i>
                </div>
                <h3 class="tnc-section-title">Customer Support</h3>
            </div>
            <div class="tnc-section-content">
                <p>Available Monday to Saturday, 10 AM–6 PM IST via phone or email. Bharat ID Solution strives to resolve inquiries efficiently and professionally.</p>
                <ul>
                    <li>Phone support: +91 9806271078</li>
                    <li>Email support: bharatidcard.katni@gmail.com</li>
                    <li>Response time: Within 24 business hours</li>
                    <li>WhatsApp support available for quick queries</li>
                    <li>Dedicated support for bulk orders</li>
                </ul>
            </div>
        </div>

        <!-- Section 10: Governing Law and Jurisdiction -->
        <div class="tnc-section" data-aos="fade-up">
            <div class="tnc-section-header">
                <div class="tnc-icon">
                    <i class="fas fa-gavel"></i>
                </div>
                <h3 class="tnc-section-title">Governing Law and Jurisdiction</h3>
            </div>
            <div class="tnc-section-content">
                <p>These terms are governed by Indian law. All legal matters shall be handled under Katni, Madhya Pradesh jurisdiction.</p>
                <ul>
                    <li>Governed by laws of India</li>
                    <li>Jurisdiction: Katni, Madhya Pradesh courts</li>
                    <li>Disputes resolved through arbitration when possible</li>
                    <li>Legal notices to be sent to registered address</li>
                </ul>
            </div>
        </div>

        <!-- Section 11: User Account and Access Control -->
        <div class="tnc-section" data-aos="fade-up">
            <div class="tnc-section-header">
                <div class="tnc-icon">
                    <i class="fas fa-user-lock"></i>
                </div>
                <h3 class="tnc-section-title">User Account and Access Control</h3>
            </div>
            <div class="tnc-section-content">
                <p>Certain website features may require account creation. Bharat ID Solution may suspend or terminate accounts engaging in violations or fraudulent activity.</p>
                <ul>
                    <li>Account creation may be required for certain features</li>
                    <li>Users responsible for account security and confidentiality</li>
                    <li>Accounts engaging in fraud will be terminated</li>
                    <li>Multiple accounts per user not permitted</li>
                    <li>Account information must be accurate and current</li>
                </ul>
            </div>
        </div>

        <!-- Section 12: Data Collection and Privacy -->
        <div class="tnc-section" data-aos="fade-up">
            <div class="tnc-section-header">
                <div class="tnc-icon">
                    <i class="fas fa-user-shield"></i>
                </div>
                <h3 class="tnc-section-title">Data Collection and Privacy</h3>
            </div>
            <div class="tnc-section-content">
                <p>Bharat ID Solution collects customer data for service and fulfillment purposes only. Data is never sold or shared with third-party advertisers.</p>
                <ul>
                    <li>Personal information collected only for ID card creation</li>
                    <li>Data includes: name, photo, organization name, contact details</li>
                    <li>Information kept confidential and secure</li>
                    <li>No sharing with third parties without consent</li>
                    <li>Data accessible only to authorized personnel</li>
                    <li>Right to request access, correction, or deletion of personal data</li>
                    <li>Email/phone used for order updates and essential communication</li>
                </ul>
            </div>
        </div>

        <!-- Section 13: Promotional Offers and Discounts -->
        <div class="tnc-section" data-aos="fade-up">
            <div class="tnc-section-header">
                <div class="tnc-icon">
                    <i class="fas fa-tags"></i>
                </div>
                <h3 class="tnc-section-title">Promotional Offers and Discounts</h3>
            </div>
            <div class="tnc-section-content">
                <p>Offers may vary and expire without notice. Coupons must be applied during checkout and are non-transferable.</p>
                <ul>
                    <li>Promotional offers subject to terms and conditions</li>
                    <li>Discounts cannot be combined unless specified</li>
                    <li>Coupons are non-transferable and single-use</li>
                    <li>Offers may be modified or withdrawn without notice</li>
                    <li>Bulk order discounts available upon inquiry</li>
                </ul>
            </div>
        </div>

        <!-- Section 14: Third-Party Services -->
        <div class="tnc-section" data-aos="fade-up">
            <div class="tnc-section-header">
                <div class="tnc-icon">
                    <i class="fas fa-handshake"></i>
                </div>
                <h3 class="tnc-section-title">Third-Party Services</h3>
            </div>
            <div class="tnc-section-content">
                <p>Third-party vendors may handle payment, hosting, or delivery logistics. Bharat ID Solution is not liable for external disruptions but will assist where possible.</p>
                <ul>
                    <li>Payment gateways operated by third-party providers</li>
                    <li>Courier services handled by logistics partners</li>
                    <li>Not liable for third-party service disruptions</li>
                    <li>Will assist in resolving third-party issues</li>
                    <li>Third-party terms and conditions apply to their services</li>
                </ul>
            </div>
        </div>

        <!-- Section 15: Force Majeure -->
        <div class="tnc-section" data-aos="fade-up">
            <div class="tnc-section-header">
                <div class="tnc-icon">
                    <i class="fas fa-exclamation-circle"></i>
                </div>
                <h3 class="tnc-section-title">Force Majeure</h3>
            </div>
            <div class="tnc-section-content">
                <p>Bharat ID Solution shall not be held responsible for delays due to natural disasters, strikes, lockdowns, pandemics, or government actions.</p>
                <ul>
                    <li>Not liable for delays due to acts of God</li>
                    <li>Includes: natural disasters, pandemics, strikes, riots</li>
                    <li>Government restrictions and lockdowns covered</li>
                    <li>Will notify customers of force majeure situations</li>
                    <li>Orders will be fulfilled once situation normalizes</li>
                </ul>
            </div>
        </div>

        <!-- Section 16: Website Usage and Ethical Conduct -->
        <div class="tnc-section" data-aos="fade-up">
            <div class="tnc-section-header">
                <div class="tnc-icon">
                    <i class="fas fa-user-check"></i>
                </div>
                <h3 class="tnc-section-title">Website Usage and Ethical Conduct</h3>
            </div>
            <div class="tnc-section-content">
                <p>Users must refrain from uploading malicious code or inappropriate content. Bharat ID Solution may delete content that violates ethical or legal guidelines without prior notice.</p>
                <ul>
                    <li>No malicious code, viruses, or harmful software</li>
                    <li>No inappropriate, offensive, or illegal content</li>
                    <li>No attempts to breach website security</li>
                    <li>Violation may result in account termination</li>
                    <li>Content may be removed without notice if violating guidelines</li>
                </ul>
            </div>
        </div>

        <!-- Section 17: Indemnification -->
        <div class="tnc-section" data-aos="fade-up">
            <div class="tnc-section-header">
                <div class="tnc-icon">
                    <i class="fas fa-balance-scale"></i>
                </div>
                <h3 class="tnc-section-title">Indemnification</h3>
            </div>
            <div class="tnc-section-content">
                <p>Users agree to indemnify Bharat ID Solution from any legal claims arising from misuse of services or violation of these terms.</p>
                <ul>
                    <li>Users liable for their actions and content</li>
                    <li>Indemnify against claims from copyright violations</li>
                    <li>Indemnify against claims from misuse of services</li>
                    <li>Covers legal fees and damages from user violations</li>
                </ul>
            </div>
        </div>

        <!-- Section 18: Updates and Amendments -->
        <div class="tnc-section" data-aos="fade-up">
            <div class="tnc-section-header">
                <div class="tnc-icon">
                    <i class="fas fa-sync-alt"></i>
                </div>
                <h3 class="tnc-section-title">Updates and Amendments</h3>
            </div>
            <div class="tnc-section-content">
                <p>Bharat ID Solution reserves the right to modify these Terms and Conditions. Continued usage of the site implies acceptance of the latest version.</p>
                <ul>
                    <li>Terms may be updated without prior notice</li>
                    <li>Last updated date displayed at top of page</li>
                    <li>Continued use implies acceptance of changes</li>
                    <li>Users encouraged to review terms periodically</li>
                    <li>Significant changes will be communicated via email</li>
                </ul>
            </div>
        </div>

        <!-- Section 19: Service Availability -->
        <div class="tnc-section" data-aos="fade-up">
            <div class="tnc-section-header">
                <div class="tnc-icon">
                    <i class="fas fa-clock"></i>
                </div>
                <h3 class="tnc-section-title">Service Availability</h3>
            </div>
            <div class="tnc-section-content">
                <p>While we strive for 24-48 hour dispatch, certain customizations or bulk orders may require extended timelines. Service updates will be communicated in advance where feasible.</p>
                <ul>
                    <li>Standard dispatch: 24-48 hours</li>
                    <li>Custom orders may require additional time</li>
                    <li>Bulk orders: timeline communicated during confirmation</li>
                    <li>Service modifications or discontinuation reserved</li>
                    <li>Advance notice provided when possible</li>
                </ul>
            </div>
        </div>

        <!-- Section 20: Contact and Escalation -->
        <div class="tnc-section" data-aos="fade-up">
            <div class="tnc-section-header">
                <div class="tnc-icon">
                    <i class="fas fa-phone-volume"></i>
                </div>
                <h3 class="tnc-section-title">Contact and Escalation</h3>
            </div>
            <div class="tnc-section-content">
                <p>For grievances or escalations, users may contact bharatidcard.katni@gmail.com or call +91 9806271078. A formal complaint resolution process will be initiated within 48 working hours.</p>
                <ul>
                    <li>Escalation email: bharatidcard.katni@gmail.com</li>
                    <li>Escalation phone: +91 9806271078</li>
                    <li>Response within 48 working hours</li>
                    <li>Formal complaint tracking system</li>
                    <li>Resolution-focused approach to all grievances</li>
                </ul>
            </div>
        </div>

        <!-- Contact Box -->
        <div class="tnc-contact-box" data-aos="zoom-in">
            <h3>Have Questions About Our Terms?</h3>
            <p>Our team is here to help clarify any concerns you may have</p>
            <div class="tnc-contact-info">
                <div class="tnc-contact-item">
                    <i class="fas fa-phone"></i>
                    <span>+91 9806271078</span>
                </div>
                <div class="tnc-contact-item">
                    <i class="fas fa-envelope"></i>
                    <span>bharatidcard.katni@gmail.com</span>
                </div>
                <div class="tnc-contact-item">
                    <i class="fas fa-map-marker-alt"></i>
                    <span>Katni, Madhya Pradesh</span>
                </div>
            </div>
            <div style="margin-top: 30px;">
                <a href="contact.html" style="display: inline-block; background: white; color: #667eea; padding: 15px 40px; border-radius: 50px; text-decoration: none; font-weight: 700; transition: all 0.3s ease; box-shadow: 0 10px 30px rgba(0,0,0,0.2);">
                    Contact Us Now
                </a>
            </div>
        </div>
    </div>
</div>