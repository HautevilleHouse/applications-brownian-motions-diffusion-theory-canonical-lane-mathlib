import ApplicationsBrownianMotionsDiffusionTheoryCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ApplicationsBrownianMotionsDiffusionTheory

def ConstrainedBrownianMotionsDiffusionTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_brownian_motions_diffusion_theory_endgame (A : AdmissibleClass) :
    ConstrainedBrownianMotionsDiffusionTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ApplicationsBrownianMotionsDiffusionTheory
end HautevilleHouse