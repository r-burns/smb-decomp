#include <dolphin.h>

#include "global.h"
#include "mathutil.h"

void camera_init(void)
{
    int i;
    struct Camera *camera;

    currentCameraStructPtr = &cameraInfo[0];
    lbl_802F1C40 = -1;
    lbl_802F1C34 = -1;

    for (i = 0, camera = &cameraInfo[0]; i < 5; i++, camera++)
    {
        camera->unk204 = i;
        camera->unk1E = 3;
        camera->unk208 = 3;
        camera->unk26 = 0;
        camera->unk28 = 0.0f;
        camera->unk2C = 0.0f;
        camera->unk30 = 0x2AAA;
        camera->unk32 = 0x2AAA;
        camera->unk34 = 1.3333333730697632f;
        camera->unk40 = 0.0f;
        camera->unk44 = 0.0f;
        camera->unk48 = 1.0f;
        camera->unk4C = 1.0f;
    }
    func_80018330(0);
}

void ev_camera_init(void)
{
    int i;
    struct Camera *camera;

    for (i = 0, camera = &cameraInfo[0]; i < 4; i++, camera++)
    {
        camera->unk24 = 0;
        camera_clear(camera);
        camera->unk26 = 0;
        camera->unk28 = 0.0f;
        camera->unk2C = 0.0f;
        camera->unk30 = 0x2AAA;
    }
    func_80018330(0);
}

void (*lbl_80176200[])(struct Camera *, struct Ball *) =
{
    func_80019D74,
    func_80019EB0,
    func_8001A34C,
    func_8001A70C,
    func_8001A840,
    func_8001A96C,
    func_8001AC80,
    func_8001AC84,
    camera_sub_ringout_main,
    func_8001B13C,
    camera_sub_ready_init,
    camera_sub_ready_main,
    func_800193AC,
    camera_sub_13,
    func_8001B140,
    camera_sub_goal_main,
    func_8001B478,
    camera_sub_17,
    func_8001BDDC,
    func_8001C0C4,
    func_8001C368,
    func_8001C5FC,
    camera_sub_22_23_24,
    camera_sub_22_23_24,
    camera_sub_22_23_24,
    func_8001C7D8,
    camera_sub_26,
    func_80018DC8,
    func_80018E34,
    func_80018E38,
    func_80018E6C,
    func_8001CAB8,
    func_8001CBB0,
    func_8001CD4C,
    func_8001CF28,
    func_8001D32C,
    camera_sub_36,
    func_8001D708,
    func_80019CA4,
    func_8001D968,
    func_8001D96C,
    func_8001D970,
    camera_sub_42,
    func_80019284,
    func_8001DDF0,
    func_8001E0A8,
    func_8001E2E8,
    camera_sub_47,
    func_8001E924,
    camera_sub_49,
    func_8001F524,
    func_8001F560,
    func_800196E8,
    func_800197AC,
    func_80018FA4,
    func_80018FE4,
    func_8001F698,
    func_8001F864,
    func_80020A88,
    func_80020A88,
    func_80020A88,
    func_80020A88,
    func_8001A7A4,
    func_8001FAA4,
    func_80020A88,
    func_80020A88,
    func_8001FADC,
    func_80020A88,
    func_8001FB14,
    func_8001FBA8,
    func_8002049C,
    camera_sub_71,
    func_80020910,
    camera_sub_73,
    func_80020A88,
};

static inline float sum_of_sq(register float a, register float b)
{
#ifdef __MWERKS__
    asm
    {
        fmuls a, a, a
        fmadds a, b, b, a
    }
    return a;
#else
    return a * a + b * b;
#endif
}

void ev_camera_main(void)
{
    int i;
    struct Camera *camera;
    struct Ball *ball;
    s8 *r22;
    Vec sp8;

    if (dipSwitches & DIP_DEBUG)
    {
        if ((dipSwitches & DIP_TEST_CAM) && (lbl_801F3B70[0].unk18 & (1<<(31-0x14))))
            dipSwitches ^= 0x2000;
        if ((lbl_801F3B70[0].unk0 & (1<<(31-0x16))) && (lbl_801F3B70[0].unk18 & (1<<(31-0x14))))
        {
            if (dipSwitches & DIP_TEST_CAM)
                dipSwitches &= ~DIP_TEST_CAM;
            else if (lbl_802F1EE0 & 1)
            {
                dipSwitches |= DIP_TEST_CAM;
                dipSwitches &= ~DIP_NO_INTR;
            }
        }
    }

    r22 = spritePoolInfo.unkC;
    for (i = 0, camera = &cameraInfo[0], ball = &lbl_80205E60[0]; i < 4; i++, camera++, ball++, r22++)
    {
        if ((*r22 != 0 && *r22 != 4)
         || (camera->unk24 & (1<<(31-0x1B)))
         || (camera->unk24 & (1<<(31-0x18))))
        {
            camera->unk24 &= ~1;
            if (dipSwitches & (1<<(31-0x13)))
                lbl_80176200[2](camera, ball);
            else
                lbl_80176200[camera->unk1E](camera, ball);
            mathutil_mtxA_from_translate(&ball->unk4);
            mathutil_mtxA_rotate_y(camera->unk1A);
            mathutil_mtxA_rigid_inv_tf_point(&camera->unk0, &camera->unkBC);
            mathutil_mtxA_rigid_inv_tf_point(&camera->unkC, &camera->unkC8);
            mathutil_mtx_copy(camera->unk144, camera->unk174);
            mathutil_mtx_copy(camera->unk1A4, camera->unk1D4);
            mathutil_mtxA_from_identity();
            mathutil_mtxA_rotate_z(-camera->unk1C);
            mathutil_mtxA_rotate_x(-camera->unk18);
            mathutil_mtxA_rotate_y(-camera->unk1A);
            mathutil_mtxA_translate_neg(&camera->unk0);
            if (!(camera->unk24 & (1<<(31-0x1D))))
            {
                mathutil_mtxA_to_mtx(camera->unk1A4);
                if (eventInfo[2].state == 2 && !(camera->unk24 & (1<<(31-0x1C))))
                {
                    mathutil_mtxA_translate(&ball->unk4);
                    mathutil_mtxA_rotate_x(lbl_80206BF0[i].unk0 * 0.59999999999999998);
                    mathutil_mtxA_rotate_z(lbl_80206BF0[i].unk2 * 0.59999999999999998);
                    mathutil_mtxA_translate_neg(&ball->unk4);
                }
                mathutil_mtxA_to_mtx(camera->unk144);
            }
            else
            {
                mathutil_mtxA_push();
                mathutil_mtxA_translate(&ball->unk4);
                mathutil_mtxA_rotate_z(-lbl_80206BF0[i].unk2 >> 1);
                mathutil_mtxA_rotate_x(-lbl_80206BF0[i].unk0 >> 1);
                mathutil_mtxA_translate_neg(&ball->unk4);
                mathutil_mtxA_to_mtx(camera->unk1A4);
                mathutil_mtxA_pop();
                mathutil_mtxA_translate(&ball->unk4);
                mathutil_mtxA_rotate_x(lbl_80206BF0[i].unk0 >> 1);
                mathutil_mtxA_rotate_z(lbl_80206BF0[i].unk2 >> 1);
                mathutil_mtxA_translate_neg(&ball->unk4);
                mathutil_mtxA_to_mtx(camera->unk144);
            }

            switch (camera->unk26)
            {
            case 1:
                camera->unk28 = 0.0f;
                camera->unk2C = 0.0f;
                break;
            case 2:
            case 3:
                if (camera->unk28 < 0.0)
                {
                    camera->unk28 += 0.0041666666666666666;
                    if (camera->unk28 > 0.0)
                        camera->unk28 = 0.0f;
                }
                else if (camera->unk28 > 0.0)
                {
                    camera->unk28 -= 0.0041666666666666666;
                    if (camera->unk28 < 0.0)
                        camera->unk28 = 0.0f;
                }
                if (camera->unk2C < 0.0)
                {
                    camera->unk2C += 0.0041666666666666666;
                    if (camera->unk2C > 0.0)
                        camera->unk2C = 0.0f;
                }
                else if (camera->unk2C > 0.0)
                {
                    camera->unk2C -= 0.0041666666666666666;
                    if (camera->unk2C < 0.0)
                        camera->unk2C = 0.0f;
                }
                break;
            case 4:
                camera->unk28 = 0.0f;
                camera->unk2C = -0.375f;
                break;
            case 0:
                camera->unk28 = 0.0f;
                camera->unk2C = 0.0f;
                break;
            case 5:
                camera->unk28 = 0.0f;
                camera->unk2C = 0.0f;
                if (lbl_802F1EE0 & 0xA)
                    break;
                mathutil_mtxA_from_mtx(camera->unk144);
                mathutil_mtxA_tf_point(&ball->unk4, &sp8);
                if (sp8.z > 0.0)
                    camera->unk30 = 0x5555;
                else
                {
                    float f1 = 2.0 * ball->unk68 + mathutil_sqrt(sum_of_sq(sp8.x, sp8.y));
                    s16 r0 = mathutil_atan2(f1, -sp8.z) * 2;
                    if (r0 > 0x5555)
                        r0 = 0x5555;
                    else if (r0 < 0x4FA)
                        r0 = 0x4FA;
                    camera->unk30 += (r0 - camera->unk30) >> 5;
                }
                break;
            case 6:
                switch (modeCtrl.unk4)
                {
                case 0:
                    if (camera->unk50 <= 0x474)
                    {
                        camera->unk28 = 0.0f;
                        camera->unk2C = 0.0f;
                    }
                    else
                    {
                        camera->unk28 = 0.0f;
                        camera->unk2C = 0.0f;
                    }
                    break;
                default:
                    if (camera->unk50 <= 0x474)
                    {
                        camera->unk28 = -0.30000001192092896f;
                        camera->unk2C = 0.0f;
                    }
                    else
                    {
                        camera->unk28 = 0.0f;
                        camera->unk2C = 0.0f;
                    }
                }
                camera->unk30 = 0x1555;
                break;
            case 7:
                camera->unk28 = 0.0f;
                camera->unk2C = -0.54000002145767212f;
                break;
            case 8:
                camera->unk28 = 0.0f;
                camera->unk2C = 0.0f;
                break;
            case 10:
                if (i == 0)
                    camera->unk30 = lbl_802F1C30;
                else
                    camera->unk30 = 0x1000;
                break;
            case 12:
                if (lbl_802F21E8 != 0)
                {
                    camera->unk28 = lbl_802F21EC;
                    camera->unk2C = lbl_802F21F0;
                    camera->unk30 = 182.04444885253906f * lbl_802F16B8;
                }
                break;
            }
            camera->unk38 = mathutil_tan(camera->unk30 >> 1);
            camera->unk3C = 1.0 / camera->unk38;
            func_80018C58(camera);
        }
    }
    func_80018330(0);
}

void ev_camera_dest(void) {}
