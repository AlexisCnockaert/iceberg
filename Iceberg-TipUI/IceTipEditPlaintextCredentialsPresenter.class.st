"
I implement the dialog to edit plaintext credentials.
"
Class {
	#name : 'IceTipEditPlaintextCredentialsPresenter',
	#superclass : 'IceTipAbstractPlaintextCredentialsPresenter',
	#category : 'Iceberg-TipUI-Credentials',
	#package : 'Iceberg-TipUI',
	#tag : 'Credentials'
}

{ #category : 'accessing' }
IceTipEditPlaintextCredentialsPresenter class >> defaultPreferredExtent [
	^ (350 @ 160)
]

{ #category : 'actions' }
IceTipEditPlaintextCredentialsPresenter >> accept [ 
	
	^ self acceptEditAction
]

{ #category : 'layout' }
IceTipEditPlaintextCredentialsPresenter >> defaultLayout [

	^ SpGridLayout new 
		beColumnNotHomogeneous;
		column: 2 expand: true;
		build: [ :builder | builder
			add: usernameLabel; add: usernameInput; nextRow;
			add: passwordLabel; add: passwordInput; nextRow ];
		yourself
]

{ #category : 'actions' }
IceTipEditPlaintextCredentialsPresenter >> refreshCredentialsFromPresenter [

	credentials
		username: self username;
		password: self password
]

{ #category : 'accessing' }
IceTipEditPlaintextCredentialsPresenter >> refreshPresenterFromCredentials [

	usernameInput text: credentials username.
	passwordInput text: credentials password
]

{ #category : 'initialization' }
IceTipEditPlaintextCredentialsPresenter >> titleForWindow [

	^ 'Edit credential for ' , credentials host
]
