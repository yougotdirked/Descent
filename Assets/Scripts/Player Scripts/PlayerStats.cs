using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

/*
 * Class to keep track of the player's stats. Here other classes can look up the stamina value etc.
 * Furthermore this class will make sure the UI shows the correct values.
 * 
 * Currently adapted to Invector's standard character controller
 * TODO
 * health mechanics
 * sprinting doesnt stop when there is no stamina left
 * */
namespace Invector.CharacterController
{
    public class PlayerStats : MonoBehaviour
    {
        #region Properties
        public float maxStamina = 100;
        public float maxHealth = 100;

        public float jumpCost;
        public float rollCost;
        public float runCost;

        [SerializeField] Text staminatext;
        [SerializeField] Text healthtext;

        public float staminaRegenRate;
        public float healthRegenRate;

        public float currentStamina;
        public float currentHealth;

        bool hasJumped = false;
        vThirdPersonMotor motor;
        #endregion

        public bool canJump;
        public bool canSprint;

        // Use this for initialization
        void Start()
        {
            currentHealth = maxHealth;
            currentStamina = maxStamina;

            motor = GetComponent<vThirdPersonController>();
        }

        // Update is called once per frame
        void Update()
        {
            checkSprint();
            checkJump();
            if (staminatext != null)
                staminatext.text = ((int)currentStamina).ToString();
            if (healthtext != null)
                healthtext.text = ((int)currentHealth).ToString();

            if (motor.isGrounded && hasJumped)
            {
                hasJumped = false;
            }

            if (!motor.isSprinting && !motor.isJumping)
            {
                if (currentStamina <= maxStamina)
                    currentStamina += staminaRegenRate * Time.deltaTime;
                else
                    currentStamina = maxStamina;
            }

            if (currentStamina <= 0)
                currentStamina = 0;
        }

        #region Action Checks
        void checkSprint()
        {
            canSprint = currentStamina - (runCost * Time.deltaTime) >= 0;
            if (motor.isSprinting)
            {
                currentStamina -= runCost * Time.deltaTime;
            }
        }
        void checkJump()
        {
            canJump = currentStamina - jumpCost >= 0;
        }
        void checkRoll()
        {

        }
        #endregion
    }
}
