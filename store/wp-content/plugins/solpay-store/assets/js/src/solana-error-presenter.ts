export default class SolanaErrorPresenter {
    private errorContainer: Element;
    private errorMessagesMapping: Array<{ error: string; formattedText: string }>;

    constructor(errorContainerSelector: string, errorMessagesMapping: Array<{ error: string, formattedText: string }>) {
        this.errorMessagesMapping = errorMessagesMapping;
        this.errorContainer = document.querySelector(errorContainerSelector);
    }

    public clear(): this {
        if (!this.errorContainer) {
            return;
        }

        this.errorContainer.classList.remove('wc-solana-error-container--active');
        this.errorContainer.innerHTML = '';

        return this;
    }

    public showErrors(errors: Array<string>) {
        errors.forEach(this.showError.bind(this));
    }

    public showError(error: string) {
        if (!this.errorContainer) {
            console.log(error);

            return;
        }

        if (!this.errorContainer.classList.contains('wc-solana-error-container--active')) {
            this.errorContainer.classList.add('wc-solana-error-container--active');
        }

        this.errorContainer.appendChild(this.createErrorElement(error));
    }

    private createErrorElement(error: string): Node {
        let errorElement = document.createElement('div');

        errorElement.classList.add('wc-solana-error');

        let formattedText = error;

        for (let i = this.errorMessagesMapping.length - 1; i >= 0; i--) {
            if (this.errorMessagesMapping[i].error === error) {
                formattedText = this.errorMessagesMapping[i].formattedText;
                break;
            }
        }

        errorElement.innerText = formattedText;

        return errorElement;
    }

    public static init(errorContainerSelector: string, errorMessagesMapping: Array<{ error: string, formattedText: string }>): SolanaErrorPresenter {
        return new SolanaErrorPresenter(errorContainerSelector, errorMessagesMapping);
    }
}
