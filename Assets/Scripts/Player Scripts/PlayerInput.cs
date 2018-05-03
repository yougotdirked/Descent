using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInput : MonoBehaviour {

    #region Properties
    PlayerController controller;
    PlayerCombat playercombat;

    public vThirdPersonCamera camera;

    #endregion

    #region keybinds
    [Header("Key Binds")]
    public string horizontalInput = "Horizontal";
    public string verticalInput = "Vertical";
    public KeyCode jumpInput = KeyCode.Space;
    public KeyCode sprintInput = KeyCode.LeftShift;
    public KeyCode dodgeInput = KeyCode.LeftAlt;
    public string attackInput = "LeftMouse";
    public string blockInput = "RightMouse";

    public string scrollWheel = "ScrollWheel";
    #endregion

    float scrollResetTime = .3f;
    float scrollResetCounter = 0;

    #region Camera
    [Header("Camera Settings")]
    public string rotateCameraXInput = "Mouse X";
    public string rotateCameraYInput = "Mouse Y";

    protected vThirdPersonCamera tpCamera;                // acess camera info        
    [HideInInspector]
    public string customCameraState;                    // generic string to change the CameraState        
    [HideInInspector]
    public string customlookAtPoint;                    // generic string to change the CameraPoint of the Fixed Point Mode        
    [HideInInspector]
    public bool changeCameraState;                      // generic bool to change the CameraState        
    [HideInInspector]
    public bool smoothCameraState;                      // generic bool to know if the state will change with or without lerp  
    [HideInInspector]
    public bool keepDirection;                          // keep the current direction in case you change the cameraState
#endregion

    // Use this for initialization
    void Start () {
        controller = GetComponent<PlayerController>();
        playercombat = GetComponent<PlayerCombat>();
        if (camera)
            camera.SetMainTarget(this.transform);

        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;

        if (controller != null)
        {
            controller.Init();
        }
	}

    protected virtual void LateUpdate()
    {
        if (controller == null) return;
        InputHandle();
        UpdateCameraStates();

        if (playercombat == null) return;
    }

    protected virtual void FixedUpdate()
    {
        controller.AirControl();
        CameraInput();

        if (scrollResetCounter > 0)
        {
            scrollResetCounter -= Time.deltaTime;
        }
        else scrollResetCounter = 0;
    }

    protected virtual void Update()
    {
        controller.UpdateMotor();
        controller.UpdateAnimator();
    }

    protected virtual void InputHandle()
    {
        ExitGameInput();
        CameraInput();
        ScrollWheelInput();

        MoveCharacter();
        SprintInput();
        AttackInput();
        DodgeInput();
        JumpInput();
        BlockInput();
    }

    protected virtual void ScrollWheelInput()
    {
        if (!(scrollResetCounter > 0))
        {
            if (Input.GetAxis(scrollWheel) != 0)
            {
                playercombat.switchSet(Input.GetAxis(scrollWheel));
                scrollResetCounter = scrollResetTime;
            }
        }
    }

    protected virtual void MoveCharacter()
    {
        controller.input.x = Input.GetAxis(horizontalInput);
        controller.input.y = Input.GetAxis(verticalInput);
    }

    protected virtual void BlockInput()
    {
        controller.isBlocking = Input.GetButton(blockInput);
        controller.blockValue = Input.GetAxis(blockInput);
    }

    protected virtual void AttackInput()
    {
        if (Input.GetButtonDown(attackInput))
        {
            controller.Attack();
        }
    }

    protected virtual void DodgeInput()
    {
        if (Input.GetKeyDown(dodgeInput))
            controller.Dodge();
    }

    protected virtual void JumpInput()
    {
        if (Input.GetKeyDown(jumpInput))
            controller.Jump();
    }

    protected virtual void SprintInput()
    {
        if (Input.GetKeyDown(sprintInput))
            controller.Sprint(true);
        else if (Input.GetKeyUp(sprintInput))
            controller.Sprint(false);
    }

    protected virtual void ExitGameInput()
    {
        //UP FOR CHANGE
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            if (!Cursor.visible)
                Cursor.visible = true;
            else
                Application.Quit();
        }
    }

    #region Camera Methods

    protected virtual void CameraInput()
    {
        if (tpCamera == null)
            return;
        var Y = Input.GetAxis(rotateCameraYInput);
        var X = Input.GetAxis(rotateCameraXInput);

        tpCamera.RotateCamera(X, Y);

        // tranform Character direction from camera if not KeepDirection
        if (!keepDirection)
            controller.UpdateTargetDirection(tpCamera != null ? tpCamera.transform : null);
        // rotate the character with the camera while strafing        
       RotateWithCamera(tpCamera != null ? tpCamera.transform : null);
    }

    protected virtual void UpdateCameraStates()
    {
        // CAMERA STATE - you can change the CameraState here, the bool means if you want lerp of not, make sure to use the same CameraState String that you named on TPCameraListData
        if (tpCamera == null)
        {
            tpCamera = FindObjectOfType<vThirdPersonCamera>();
            if (tpCamera == null)
                return;
            if (tpCamera)
            {
                tpCamera.SetMainTarget(this.transform);
                tpCamera.Init();
            }
        }
    }

    protected virtual void RotateWithCamera(Transform cameraTransform)
    {
        if (controller.isBlocking)
        {
            controller.RotateWithAnotherTransform(cameraTransform);
        }
    }
    #endregion
}
