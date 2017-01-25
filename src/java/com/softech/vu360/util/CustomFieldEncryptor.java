package com.softech.vu360.util;

import java.security.InvalidKeyException;
import java.security.Key;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;

/**
 * @author Dyutiman
 * created on 4th sep 2009
 *
 */
public class CustomFieldEncryptor {
	
	private static String algorithm = "Blowfish";
	private static Key key = null;
	private static Cipher cipher = null;
	
	public CustomFieldEncryptor() {
		try {
			setUp();
		} catch( Exception e ) {
			
		}
	}
	
	private static void setUp() throws Exception {
		key = KeyGenerator.getInstance(algorithm).generateKey();
		cipher = Cipher.getInstance(algorithm);
	}
	
	/**
	 *  method to encrypt the input String
	 *  used to encrypt the custom fields which are encrypted.
	 */
	public static byte[] encrypt(String input) throws InvalidKeyException, BadPaddingException, 
		IllegalBlockSizeException {
		cipher.init(Cipher.ENCRYPT_MODE, key);
		byte[] inputBytes = input.getBytes();
		return cipher.doFinal(inputBytes);
	}
	
	/**
	 *  method to decrypt the encrypted String which is passed as byte array.
	 *  the method doFinal() may throw exception Bad-paddind or Illegal block-size
	 *  depending upon the algorithm used...
	 * 
	 */
	public static String decrypt(byte[] encryptionBytes) throws InvalidKeyException, BadPaddingException,
		IllegalBlockSizeException {
		// decryption is getting done even if exception is thrown -
		cipher.init(Cipher.DECRYPT_MODE, key);
		byte[] recoveredBytes = cipher.doFinal(encryptionBytes);
		String recovered = new String(recoveredBytes);
		return recovered;
	}
	
}