import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ApplicationsBrownianMotionsDiffusionTheory

structure BrownianMotionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BrownianMotionsDiffusionAdmittedObject where
  space : BrownianMotionSpace
  diffusionProcess : Prop
  solutionToSDE : Prop
  conclusion : solutionToSDE

structure AdmissibleClass where
  object : BrownianMotionsDiffusionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ApplicationsBrownianMotionsDiffusionTheory
end HautevilleHouse