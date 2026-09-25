package tech.ula.library.model.repositories;

import android.content.Context;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.GlobalScope;
import tech.ula.library.model.daos.AppsDao;
import tech.ula.library.model.daos.FilesystemDao;
import tech.ula.library.model.daos.SessionDao;

/* JADX INFO: compiled from: UlaDatabase.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b'\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H&J\b\u0010\u0005\u001a\u00020\u0006H&J\b\u0010\u0007\u001a\u00020\bH&¨\u0006\n"}, d2 = {"Ltech/ula/library/model/repositories/UlaDatabase;", "Landroidx/room/RoomDatabase;", "()V", "appsDao", "Ltech/ula/library/model/daos/AppsDao;", "filesystemDao", "Ltech/ula/library/model/daos/FilesystemDao;", "sessionDao", "Ltech/ula/library/model/daos/SessionDao;", "Companion", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class UlaDatabase extends RoomDatabase {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static volatile UlaDatabase INSTANCE;

    public abstract AppsDao appsDao();

    public abstract FilesystemDao filesystemDao();

    public abstract SessionDao sessionDao();

    /* JADX INFO: compiled from: UlaDatabase.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Ltech/ula/library/model/repositories/UlaDatabase$Companion;", "", "()V", "INSTANCE", "Ltech/ula/library/model/repositories/UlaDatabase;", "buildDatabase", "context", "Landroid/content/Context;", "getInstance", "UserLOstLibrary_UserLOstRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final UlaDatabase getInstance(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            UlaDatabase ulaDatabase = UlaDatabase.INSTANCE;
            if (ulaDatabase == null) {
                synchronized (this) {
                    ulaDatabase = UlaDatabase.INSTANCE;
                    if (ulaDatabase == null) {
                        UlaDatabase ulaDatabaseBuildDatabase = UlaDatabase.INSTANCE.buildDatabase(context);
                        Companion companion = UlaDatabase.INSTANCE;
                        UlaDatabase.INSTANCE = ulaDatabaseBuildDatabase;
                        ulaDatabase = ulaDatabaseBuildDatabase;
                    }
                }
            }
            return ulaDatabase;
        }

        private final UlaDatabase buildDatabase(final Context context) {
            RoomDatabase roomDatabaseBuild = Room.databaseBuilder(context.getApplicationContext(), UlaDatabase.class, "Data.db").addMigrations(new Migration1To2(), new Migration2To3(), new Migration3To4(), new Migration4To5(), new Migration5To6(), new Migration6To7(), new Migration7To8(), new Migration8To9(), new Migration9To10(), new Migration10To11(), new Migration11To12(), new Migration12To13(), new Migration13To14(), new Migration14To15(), new Migration15To16(), new Migration16To17()).addCallback(new RoomDatabase.Callback() { // from class: tech.ula.library.model.repositories.UlaDatabase$Companion$buildDatabase$1
                @Override // androidx.room.RoomDatabase.Callback
                public void onOpen(SupportSQLiteDatabase db) {
                    Intrinsics.checkNotNullParameter(db, "db");
                    super.onOpen(db);
                    BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, null, null, new UlaDatabase$Companion$buildDatabase$1$onOpen$1(context, null), 3, null);
                }
            }).build();
            Intrinsics.checkNotNullExpressionValue(roomDatabaseBuild, "build(...)");
            return (UlaDatabase) roomDatabaseBuild;
        }
    }
}
