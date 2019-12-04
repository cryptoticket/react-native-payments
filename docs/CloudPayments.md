# CloudPayments
Now only Apply Pay is supported.

### Add CloudPayments support
To create cryptogram for CloudPayments just add [CloudPayments iOS SDK pod](https://github.com/cloudpayments/SDK-iOS) to Podfile:

```ruby
pod 'SDK-iOS', :git =>  "https://github.com/cloudpayments/SDK-iOS", :branch => "master"
```

### Get Cloudpayments cryptogram
```es6
const paymentRequest = new PaymentRequest(METHOD_DATA, details);
return paymentRequest
    .show()
    .then(paymentResponse => {
        const {paymentToken} = paymentResponse.details; // CloudPayments cryptogram
    });
```
