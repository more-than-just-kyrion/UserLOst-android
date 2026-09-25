package tech.ula.library.utils;

import com.iiordanov.bVNC.Constants;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import tech.ula.library.R;

/* JADX INFO: compiled from: CredentialValidator.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0006J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0006H\u0002J!\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00062\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\u000f¢\u0006\u0002\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u0006H\u0002J\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0006¨\u0006\u0014"}, d2 = {"Ltech/ula/library/utils/CredentialValidator;", "", "()V", "validateFilesystemName", "Ltech/ula/library/utils/CredentialValidationStatus;", "filesystemName", "", "validateFilesystemNameCharacters", "", "validatePassword", Constants.testpassword, "validatePasswordCharacters", "validateUsername", "username", "blacklistUsernames", "", "(Ljava/lang/String;[Ljava/lang/String;)Ltech/ula/library/utils/CredentialValidationStatus;", "validateUsernameCharacters", "validateVncPassword", "vncPassword", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CredentialValidator {
    public final CredentialValidationStatus validateFilesystemName(String filesystemName) {
        Intrinsics.checkNotNullParameter(filesystemName, "filesystemName");
        if (filesystemName.length() == 0) {
            return new CredentialValidationStatus(false, R.string.error_filesystem_name);
        }
        if (!validateFilesystemNameCharacters(filesystemName)) {
            return new CredentialValidationStatus(false, R.string.error_filesystem_name_invalid_characters);
        }
        if (Intrinsics.areEqual(filesystemName, ".") || Intrinsics.areEqual(filesystemName, "..")) {
            return new CredentialValidationStatus(false, R.string.error_filesystem_name_invalid_characters);
        }
        return new CredentialValidationStatus(true, 0, 2, null);
    }

    public final CredentialValidationStatus validateUsername(String username, String[] blacklistUsernames) {
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(blacklistUsernames, "blacklistUsernames");
        if (username.length() == 0) {
            return new CredentialValidationStatus(false, R.string.error_empty_field);
        }
        if (!validateUsernameCharacters(username)) {
            return new CredentialValidationStatus(false, R.string.error_username_invalid_characters);
        }
        if (ArraysKt.contains(blacklistUsernames, username)) {
            return new CredentialValidationStatus(false, R.string.error_username_in_blacklist);
        }
        return new CredentialValidationStatus(true, 0, 2, null);
    }

    public final CredentialValidationStatus validatePassword(String password) {
        Intrinsics.checkNotNullParameter(password, "password");
        if (password.length() == 0) {
            return new CredentialValidationStatus(false, R.string.error_empty_field);
        }
        if (!validatePasswordCharacters(password)) {
            return new CredentialValidationStatus(false, R.string.error_password_invalid);
        }
        return new CredentialValidationStatus(true, 0, 2, null);
    }

    public final CredentialValidationStatus validateVncPassword(String vncPassword) {
        Intrinsics.checkNotNullParameter(vncPassword, "vncPassword");
        if (vncPassword.length() == 0) {
            return new CredentialValidationStatus(false, R.string.error_empty_field);
        }
        if (vncPassword.length() > 8 || vncPassword.length() < 6) {
            return new CredentialValidationStatus(false, R.string.error_vnc_password_length_incorrect);
        }
        if (!validatePasswordCharacters(vncPassword)) {
            return new CredentialValidationStatus(false, R.string.error_vnc_password_invalid);
        }
        return new CredentialValidationStatus(true, 0, 2, null);
    }

    private final boolean validateFilesystemNameCharacters(String filesystemName) {
        return Pattern.compile("([a-zA-Z0-9!@#$%^&()_+=,.?<>]{0,50})").matcher(filesystemName).matches();
    }

    private final boolean validateUsernameCharacters(String username) {
        return Pattern.compile("([a-z_][a-z0-9_]{0,30})").matcher(username).matches();
    }

    private final boolean validatePasswordCharacters(String password) {
        Pattern patternCompile = Pattern.compile("^[a-zA-Z0-9!@#$%^&*()_+=,./?<>:]*$");
        Intrinsics.checkNotNullExpressionValue(patternCompile, "compile(...)");
        Matcher matcher = patternCompile.matcher(password);
        Intrinsics.checkNotNullExpressionValue(matcher, "matcher(...)");
        return matcher.matches();
    }
}
