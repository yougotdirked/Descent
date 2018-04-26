using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAnimator : CharacterMotor {

    public virtual void UpdateAnimator()
    {
        if (animator == null || !animator.enabled) return;

        animator.SetBool("IsStrafing", isBlocking);
        animator.SetBool("IsGrounded", isGrounded);
        animator.SetFloat("GroundDistance", groundDistance);
        animator.SetBool("IsDodging", isDodging);

        if (!isGrounded)
            animator.SetFloat("VerticalVelocity", verticalVelocity);

        if (isBlocking)
        {
            animator.SetFloat("InputHorizontal", direction, 0.1f, Time.deltaTime);
        }
        animator.SetFloat("InputVertical", speed, 0.1f, Time.deltaTime);
    }

    public void OnAnimatorMove()
    {
        // we implement this function to override the default root motion.
        // this allows us to modify the positional speed before it's applied.
        if (isGrounded)
        {
            transform.rotation = animator.rootRotation;

            var speedDir = Mathf.Abs(direction) + Mathf.Abs(speed);
            speedDir = Mathf.Clamp(speedDir, 0, 1);
            var strafeSpeed = (isSprinting ? 1.5f : 1f) * Mathf.Clamp(speedDir, 0f, 1f);

            // strafe extra speed
            if (isBlocking)
            {
                if (strafeSpeed <= 0.5f)
                    ControlSpeed(strafeWalkSpeed);
                else if (strafeSpeed > 0.5f && strafeSpeed <= 1f)
                    ControlSpeed(strafeRunningSpeed);
                else
                    ControlSpeed(strafeSprintSpeed);
            }
            else if (!isBlocking) // maybe add aim too;
            {
                // free extra speed                
                if (speed <= 0.5f)
                    ControlSpeed(freeWalkSpeed);
                else if (speed > 0.5 && speed <= 1f)
                    ControlSpeed(freeRunningSpeed);
                else
                    ControlSpeed(freeSprintSpeed);
            }
        }
    }
}
