.class public final Ltech/ulo/library/utils/CredentialValidator;
.super Ljava/lang/Object;
.source "CredentialValidator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0006J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0006H\u0002J!\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00062\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000f\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u0006H\u0002J\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0006\u00a8\u0006\u0014"
    }
    d2 = {
        "Ltech/ulo/library/utils/CredentialValidator;",
        "",
        "()V",
        "validateFilesystemName",
        "Ltech/ulo/library/utils/CredentialValidationStatus;",
        "filesystemName",
        "",
        "validateFilesystemNameCharacters",
        "",
        "validatePassword",
        "password",
        "validatePasswordCharacters",
        "validateUsername",
        "username",
        "blacklistUsernames",
        "",
        "(Ljava/lang/String;[Ljava/lang/String;)Ltech/ulo/library/utils/CredentialValidationStatus;",
        "validateUsernameCharacters",
        "validateVncPassword",
        "vncPassword",
        "UserLOstLibrary_UserLOstRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final validateFilesystemNameCharacters(Ljava/lang/String;)Z
    .locals 1

    .line 67
    const-string v0, "([a-zA-Z0-9!@#$%^&()_+=,.?<>]{0,50})"

    .line 69
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 70
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method private final validatePasswordCharacters(Ljava/lang/String;)Z
    .locals 2

    .line 86
    const-string v0, "^[a-zA-Z0-9!@#$%^&*()_+=,./?<>:]*$"

    .line 88
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "compile(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, "matcher(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method private final validateUsernameCharacters(Ljava/lang/String;)Z
    .locals 1

    .line 75
    const-string v0, "([a-z_][a-z0-9_]{0,30})"

    .line 77
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 78
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final validateFilesystemName(Ljava/lang/String;)Ltech/ulo/library/utils/CredentialValidationStatus;
    .locals 4

    const-string v0, "filesystemName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 12
    new-instance p1, Ltech/ulo/library/utils/CredentialValidationStatus;

    sget v0, Ltech/ulo/library/R$string;->error_filesystem_name:I

    invoke-direct {p1, v1, v0}, Ltech/ulo/library/utils/CredentialValidationStatus;-><init>(ZI)V

    goto :goto_1

    .line 14
    :cond_0
    invoke-direct {p0, p1}, Ltech/ulo/library/utils/CredentialValidator;->validateFilesystemNameCharacters(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 15
    new-instance p1, Ltech/ulo/library/utils/CredentialValidationStatus;

    sget v0, Ltech/ulo/library/R$string;->error_filesystem_name_invalid_characters:I

    invoke-direct {p1, v1, v0}, Ltech/ulo/library/utils/CredentialValidationStatus;-><init>(ZI)V

    goto :goto_1

    .line 17
    :cond_1
    const-string v0, "."

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".."

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 20
    :cond_2
    new-instance p1, Ltech/ulo/library/utils/CredentialValidationStatus;

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p1, v3, v1, v0, v2}, Ltech/ulo/library/utils/CredentialValidationStatus;-><init>(ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    .line 18
    :cond_3
    :goto_0
    new-instance p1, Ltech/ulo/library/utils/CredentialValidationStatus;

    sget v0, Ltech/ulo/library/R$string;->error_filesystem_name_invalid_characters:I

    invoke-direct {p1, v1, v0}, Ltech/ulo/library/utils/CredentialValidationStatus;-><init>(ZI)V

    :goto_1
    return-object p1
.end method

.method public final validatePassword(Ljava/lang/String;)Ltech/ulo/library/utils/CredentialValidationStatus;
    .locals 4

    const-string v0, "password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 42
    new-instance p1, Ltech/ulo/library/utils/CredentialValidationStatus;

    sget v0, Ltech/ulo/library/R$string;->error_empty_field:I

    invoke-direct {p1, v1, v0}, Ltech/ulo/library/utils/CredentialValidationStatus;-><init>(ZI)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-direct {p0, p1}, Ltech/ulo/library/utils/CredentialValidator;->validatePasswordCharacters(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 45
    new-instance p1, Ltech/ulo/library/utils/CredentialValidationStatus;

    sget v0, Ltech/ulo/library/R$string;->error_password_invalid:I

    invoke-direct {p1, v1, v0}, Ltech/ulo/library/utils/CredentialValidationStatus;-><init>(ZI)V

    goto :goto_0

    .line 47
    :cond_1
    new-instance p1, Ltech/ulo/library/utils/CredentialValidationStatus;

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p1, v3, v1, v0, v2}, Ltech/ulo/library/utils/CredentialValidationStatus;-><init>(ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    return-object p1
.end method

.method public final validateUsername(Ljava/lang/String;[Ljava/lang/String;)Ltech/ulo/library/utils/CredentialValidationStatus;
    .locals 3

    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blacklistUsernames"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 27
    new-instance p1, Ltech/ulo/library/utils/CredentialValidationStatus;

    sget p2, Ltech/ulo/library/R$string;->error_empty_field:I

    invoke-direct {p1, v1, p2}, Ltech/ulo/library/utils/CredentialValidationStatus;-><init>(ZI)V

    goto :goto_0

    .line 29
    :cond_0
    invoke-direct {p0, p1}, Ltech/ulo/library/utils/CredentialValidator;->validateUsernameCharacters(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    new-instance p1, Ltech/ulo/library/utils/CredentialValidationStatus;

    sget p2, Ltech/ulo/library/R$string;->error_username_invalid_characters:I

    invoke-direct {p1, v1, p2}, Ltech/ulo/library/utils/CredentialValidationStatus;-><init>(ZI)V

    goto :goto_0

    .line 32
    :cond_1
    invoke-static {p2, p1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 33
    new-instance p1, Ltech/ulo/library/utils/CredentialValidationStatus;

    sget p2, Ltech/ulo/library/R$string;->error_username_in_blacklist:I

    invoke-direct {p1, v1, p2}, Ltech/ulo/library/utils/CredentialValidationStatus;-><init>(ZI)V

    goto :goto_0

    .line 35
    :cond_2
    new-instance p1, Ltech/ulo/library/utils/CredentialValidationStatus;

    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p1, v2, v1, p2, v0}, Ltech/ulo/library/utils/CredentialValidationStatus;-><init>(ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    return-object p1
.end method

.method public final validateVncPassword(Ljava/lang/String;)Ltech/ulo/library/utils/CredentialValidationStatus;
    .locals 4

    const-string v0, "vncPassword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 54
    new-instance p1, Ltech/ulo/library/utils/CredentialValidationStatus;

    sget v0, Ltech/ulo/library/R$string;->error_empty_field:I

    invoke-direct {p1, v1, v0}, Ltech/ulo/library/utils/CredentialValidationStatus;-><init>(ZI)V

    goto :goto_1

    .line 56
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-gt v0, v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    invoke-direct {p0, p1}, Ltech/ulo/library/utils/CredentialValidator;->validatePasswordCharacters(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 60
    new-instance p1, Ltech/ulo/library/utils/CredentialValidationStatus;

    sget v0, Ltech/ulo/library/R$string;->error_vnc_password_invalid:I

    invoke-direct {p1, v1, v0}, Ltech/ulo/library/utils/CredentialValidationStatus;-><init>(ZI)V

    goto :goto_1

    .line 62
    :cond_2
    new-instance p1, Ltech/ulo/library/utils/CredentialValidationStatus;

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p1, v3, v1, v0, v2}, Ltech/ulo/library/utils/CredentialValidationStatus;-><init>(ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    .line 57
    :cond_3
    :goto_0
    new-instance p1, Ltech/ulo/library/utils/CredentialValidationStatus;

    sget v0, Ltech/ulo/library/R$string;->error_vnc_password_length_incorrect:I

    invoke-direct {p1, v1, v0}, Ltech/ulo/library/utils/CredentialValidationStatus;-><init>(ZI)V

    :goto_1
    return-object p1
.end method
